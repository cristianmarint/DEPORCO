"""
Migracion controlada de identificadores PHP a ingles.

Solo renombra:
  - Clases de modelo (App\Models\X) y sus usos en codigo PHP
  - Controladores (XController) y sus referencias en rutas
  - Factories (XFactory) y seeders (XTableSeeder)

NO toca:
  - Tablas/columnas en BD
  - Vistas blade (UI texts)
  - Migraciones (database/migrations/)
  - Variables ni metodos por nombre suelto
  - Comentarios y PHPDoc
  - Cadenas literales que no parezcan referencia de clase

Uso:
    python docker/migrate_to_english.py [--apply]
"""
import os
import re
import sys
import subprocess

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))

CLASS_MAP = {
    'Anotacion': 'Goal',
    'Arbitro': 'Referee',
    'ArbitroPuesto': 'RefereePosition',
    'Asistente': 'Staff',
    'AsistenteInscripcionEquipo': 'StaffTeamRegistration',
    'AsistenteLicencia': 'StaffLicense',
    'Calendario': 'Schedule',
    'Categoria': 'Category',
    'Color': 'Color',
    'Criterio': 'Criterion',
    'CriterioTorneo': 'TournamentCriterion',
    'DatosBasicos': 'Profile',
    'Departamento': 'State',
    'Direccion': 'Address',
    'Enfrentamiento': 'GameMatch',
    'EnfrentamientoArbitro': 'MatchReferee',
    'Eps': 'HealthProvider',
    'Equipo': 'Team',
    'Estadistica': 'PlayerMatchStat',
    'Falta': 'Foul',
    'Fase': 'Phase',
    'Genero': 'Gender',
    'InscripcionEquipo': 'TeamRegistration',
    'InscripcionJugador': 'PlayerRegistration',
    'Instituto': 'Institution',
    'Jugador': 'Player',
    'Lugar': 'Venue',
    'Municipio': 'City',
    'Programa': 'Program',
    'Resultado': 'MatchResult',
    'Roles': 'Role',
    'Tarjeta': 'Card',
    'TarjetaCategoria': 'CardCategory',
    'Telefono': 'Phone',
    'Temporada': 'Season',
    'TiempoEnfrentamiento': 'MatchPeriod',
    'TipoEducacion': 'EducationType',
    'TipoJugador': 'PlayerType',
    'TipoSangre': 'BloodType',
    'Torneo': 'Tournament',
}

# Controladores que no corresponden a un modelo
CONTROLLER_EXTRA = {
    'EstadisticasJugador': 'PlayerStats',
}

EXCLUDE_DIRS = {'.git', 'vendor', 'node_modules', 'storage', 'docs',
                'database/dump', 'database/migrations', 'public/storage',
                'public/assets', 'bootstrap/cache', 'docker', 'informacion',
                '.github', 'tests'}


def alt(keys):
    return '|'.join(re.escape(k) for k in sorted(keys, key=len, reverse=True))


# Solo aplicamos renombre en posiciones donde un identificador apunta a una clase
def build_patterns(mapping):
    a = alt(list(mapping.keys()) + list(CONTROLLER_EXTRA.keys()))
    # Cada patron captura el identificador en grupo "name"
    patterns = [
        # use App\Models\X;
        re.compile(r'(use\s+App\\Models\\)(?P<name>' + a + r')(\s*[;\\])'),
        # App\Models\X
        re.compile(r'(App\\Models\\)(?P<name>' + a + r')(?![A-Za-z0-9_])'),
        # X::class  ó  X::method(
        re.compile(r'(?<![A-Za-z0-9_\\])(?P<name>' + a + r')(::)'),
        # belongsTo(X::class) etc. ya cubierto por ::class arriba
        # NEW X(  ó  new X(
        re.compile(r'(?<![A-Za-z0-9_])(new\s+)(?P<name>' + a + r')(\s*\()'),
        # class X extends|implements (declaracion)
        re.compile(r'(class\s+)(?P<name>' + a + r')(\s+extends|\s+implements|\s*\{|\s*$)', re.MULTILINE),
        # XController referencia (ej. 'EquipoController' o 'App\Http\Controllers\EquipoController')
        re.compile(r'(?P<pre>[\'"\\\\/]|App\\Http\\Controllers\\)(?P<name>' + a + r')(?P<suf>Controller)'),
        # @ tags como @return X
        re.compile(r'(@(?:return|param|var|throws)\s+)(?P<name>' + a + r')(?![A-Za-z0-9_])'),
        # signatures: function foo(X $bar)
        re.compile(r'(?<=[\(\s,])(?P<name>' + a + r')(\s+\$[A-Za-z_])'),
    ]
    return patterns


def replace_in_text(text, patterns, mapping):
    full_map = {**mapping, **CONTROLLER_EXTRA}
    def make_repl(pattern):
        def repl(m):
            name = m.group('name')
            new = full_map.get(name, name)
            # Reconstruimos: la captura "name" se sustituye, el resto se mantiene
            full = m.group(0)
            start = m.start('name') - m.start()
            end = m.end('name') - m.start()
            return full[:start] + new + full[end:]
        return repl

    for p in patterns:
        text = p.sub(make_repl(p), text)
    return text


def list_php_files(root):
    out = []
    for dirpath, dirs, files in os.walk(root):
        rel = os.path.relpath(dirpath, root).replace('\\', '/')
        dirs[:] = [d for d in dirs if not (
            (rel + '/' + d).strip('./') in EXCLUDE_DIRS or
            d in EXCLUDE_DIRS or
            rel in EXCLUDE_DIRS or
            any(rel.startswith(ex + '/') or rel == ex for ex in EXCLUDE_DIRS)
        )]
        for f in files:
            if f.endswith('.php'):
                out.append(os.path.join(dirpath, f))
    return out


def main():
    apply = '--apply' in sys.argv
    files = list_php_files(ROOT)
    patterns = build_patterns(CLASS_MAP)

    changed = 0
    for path in files:
        with open(path, 'r', encoding='utf-8') as f:
            orig = f.read()
        new = replace_in_text(orig, patterns, CLASS_MAP)
        if new != orig:
            changed += 1
            print('CONTENT', os.path.relpath(path, ROOT))
            if apply:
                with open(path, 'w', encoding='utf-8', newline='\n') as f:
                    f.write(new)
    print(f'PHP files content-changed: {changed}')

    controller_map = {**{k + 'Controller': v + 'Controller' for k, v in CLASS_MAP.items()},
                      **{k + 'Controller': v + 'Controller' for k, v in CONTROLLER_EXTRA.items()}}
    targets = [
        ('app/Models', dict(CLASS_MAP)),
        ('app/Http/Controllers', controller_map),
        ('database/factories', {k + 'Factory': v + 'Factory' for k, v in CLASS_MAP.items()}),
        ('database/seeds', {k + 'TableSeeder': v + 'TableSeeder' for k, v in CLASS_MAP.items()}),
        ('database/seeds', {k + 'TableSedeer': v + 'TableSeeder' for k, v in CLASS_MAP.items()}),  # typo original
    ]
    for sub, mapping in targets:
        d = os.path.join(ROOT, sub)
        if not os.path.isdir(d):
            continue
        for fn in os.listdir(d):
            base, ext = os.path.splitext(fn)
            if ext != '.php':
                continue
            if base in mapping and mapping[base] != base:
                src = os.path.join(d, fn)
                dst = os.path.join(d, mapping[base] + ext)
                print('RENAME', os.path.relpath(src, ROOT), '->', os.path.relpath(dst, ROOT))
                if apply:
                    subprocess.check_call(['git', 'mv', src, dst], cwd=ROOT)


if __name__ == '__main__':
    main()
