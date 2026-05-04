"""
Fase 2: rutas, vistas y nombres de metodos.

- Renombra carpetas resources/views/OLD/ -> resources/views/NEW/
- Cambia view('OLD.X') -> view('NEW.X') en PHP y .blade.php
- Cambia route('OLD.X') -> route('NEW.X') en PHP y .blade.php
- Renombra metodos de controlador getOLD -> getNEW dentro del archivo del controlador
"""
import os
import re
import sys
import subprocess

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))

# carpeta blade -> nuevo nombre
VIEW_DIR_MAP = {
    'equipo':              'team',
    'torneo':              'tournament',
    'lugar':               'venue',
    'instituto':           'institution',
    'datosbasicos':        'profile',
    'categoria':           'category',
    'temporada':           'season',
    'enfrentamiento':      'match',
    'calendario':          'schedule',
    'estadisticasjugador': 'playerstats',
}

# nombre-base de ruta (resource) -> nuevo
ROUTE_NAME_MAP = {
    'equipos':              'teams',
    'torneos':              'tournaments',
    'lugares':              'venues',
    'institutos':           'institutions',
    'datosbasicos':         'profiles',
    'categorias':           'categories',
    'temporadas':           'seasons',
    'enfrentamientos':      'matches',
    'calendarios':          'schedules',
    'estadisticasjugador':  'playerstats',
}

# metodo viejo -> nuevo (en controladores)
METHOD_MAP = {
    'getEquipo':       'getTeam',
    'getEquipos':      'getTeams',
    'getTorneo':       'getTournament',
    'getTorneofutbol': 'getTournamentSoccer',
    'getTemporada':    'getSeason',
    'getCategoria':    'getCategory',
    'getLugar':        'getVenue',
    'getDatosBasicos': 'getProfile',
    'getMunicipio':    'getCity',
    'getCalendario':   'getSchedule',
    'getJugador':      'getPlayer',
}

EXCLUDE_DIRS = {'.git', 'vendor', 'node_modules', 'storage',
                'docs', 'bootstrap/cache', 'public/storage',
                'public/assets', 'database/dump', 'database/migrations',
                '.github', 'docker', 'informacion'}


def list_text_files(root):
    out = []
    for dirpath, dirs, files in os.walk(root):
        rel = os.path.relpath(dirpath, root).replace('\\', '/')
        dirs[:] = [d for d in dirs if not (
            d in EXCLUDE_DIRS or rel == d or
            any(rel == ex or rel.startswith(ex + '/') for ex in EXCLUDE_DIRS)
        )]
        for f in files:
            if f.endswith('.php') or f.endswith('.blade.php'):
                out.append(os.path.join(dirpath, f))
    return out


def update_text(text):
    # view('OLD.X') and view("OLD.X")
    for old, new in VIEW_DIR_MAP.items():
        text = re.sub(
            r"(view\(\s*['\"])" + re.escape(old) + r"(\.[A-Za-z0-9_\-]+\s*['\"])",
            r"\1" + new + r"\2",
            text,
        )
    # route('OLD.X')
    for old, new in ROUTE_NAME_MAP.items():
        text = re.sub(
            r"(route\(\s*['\"])" + re.escape(old) + r"(\.[A-Za-z0-9_\-]+\s*['\"])",
            r"\1" + new + r"\2",
            text,
        )
    # metodos getOLD( ó @method getOLD
    for old, new in METHOD_MAP.items():
        text = re.sub(
            r"(?<![A-Za-z0-9_])" + re.escape(old) + r"(?![A-Za-z0-9_])",
            new,
            text,
        )
    return text


def main():
    apply = '--apply' in sys.argv
    files = list_text_files(ROOT)

    changed = 0
    for path in files:
        with open(path, 'r', encoding='utf-8') as f:
            orig = f.read()
        new = update_text(orig)
        if new != orig:
            changed += 1
            print('CONTENT', os.path.relpath(path, ROOT))
            if apply:
                with open(path, 'w', encoding='utf-8', newline='\n') as f:
                    f.write(new)
    print(f'Files content-changed: {changed}')

    # rename view directories
    views_dir = os.path.join(ROOT, 'resources', 'views')
    for old, new in VIEW_DIR_MAP.items():
        src = os.path.join(views_dir, old)
        dst = os.path.join(views_dir, new)
        if os.path.isdir(src) and not os.path.isdir(dst):
            print('RENAME-DIR', src, '->', dst)
            if apply:
                subprocess.check_call(['git', 'mv', src, dst], cwd=ROOT)


if __name__ == '__main__':
    main()
