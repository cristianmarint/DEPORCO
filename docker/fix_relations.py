"""
Inyecta la columna FK explicita en cada relacion Eloquent de los modelos.

- belongsTo(X::class) -> FK en la tabla actual = FK_MAP[X]
- hasOne(X::class) / hasMany(X::class) -> FK en la tabla X = FK_MAP[current_model]

Casos especiales (multiples FKs hacia el mismo modelo) se resuelven a mano.
"""
import os
import re

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
MODELS_DIR = os.path.join(ROOT, 'app', 'Models')

FK_MAP = {
    'Address': 'direccion_id',
    'BloodType': 'tipo_sangre_id',
    'Card': 'tarjeta_id',
    'CardCategory': 'tarjeta_categoria_id',
    'Category': 'categoria_id',
    'City': 'municipio_id',
    'Color': 'color_id',
    'Criterion': 'criterio_id',
    'EducationType': 'tipo_educacion_id',
    'Foul': 'falta_id',
    'GameMatch': 'enfrentamiento_id',
    'Gender': 'genero_id',
    'Goal': 'anotacion_id',
    'HealthProvider': 'eps_id',
    'Institution': 'instituto_id',
    'MatchPeriod': 'tiempo_enfrentamiento_id',
    'MatchReferee': 'enfrentamiento_arbitro_id',
    'MatchResult': 'resultado_id',
    'Phase': 'fase_id',
    'Phone': 'telefono_id',
    'Player': 'jugador_id',
    'PlayerMatchStat': 'estadistica_id',
    'PlayerRegistration': 'inscripcion_jugador_id',
    'PlayerType': 'tipo_jugador_id',
    'Profile': 'datos_basicos_id',
    'Program': 'programa_id',
    'Referee': 'arbitro_id',
    'RefereePosition': 'arbitro_puesto_id',
    'Role': 'role_id',
    'Schedule': 'calendario_id',
    'Season': 'temporada_id',
    'Staff': 'asistente_id',
    'StaffLicense': 'asistente_licencia_id',
    'StaffTeamRegistration': 'asistente_inscripcion_equipo_id',
    'State': 'departamento_id',
    'Team': 'equipo_id',
    'TeamRegistration': 'inscripcion_equipo_id',
    'Tournament': 'torneo_id',
    'TournamentCriterion': 'criterio_torneo_id',
    'Venue': 'lugar_id',
}


def current_model_from_filename(fn):
    return os.path.splitext(fn)[0]


def patch_file(path):
    fn = os.path.basename(path)
    current = current_model_from_filename(fn)
    fk_to_current = FK_MAP.get(current)

    with open(path, 'r', encoding='utf-8') as f:
        s = f.read()

    # belongsTo(X::class) -> belongsTo(X::class, 'FK_MAP[X]')
    def belongs_repl(m):
        cls = m.group(1)
        if cls in FK_MAP:
            return f"belongsTo({cls}::class, '{FK_MAP[cls]}')"
        return m.group(0)
    new = re.sub(r"belongsTo\(\s*([A-Za-z_]+)::class\s*\)", belongs_repl, s)

    # belongsTo(X::class, 'wrong_id') tambien lo arreglamos si la FK
    # actual coincide con el patron auto-inyectado anteriormente
    # (para corregir el run anterior). Solo reemplaza si el segundo arg es
    # exactamente el FK que el script anterior puso por error.
    # No lo hacemos generico para no pisar overrides legitimos.

    # hasOne(X::class) -> hasOne(X::class, 'FK_MAP[current]')
    def has_repl(m):
        rel = m.group(1)
        cls = m.group(2)
        if fk_to_current:
            return f"{rel}({cls}::class, '{fk_to_current}')"
        return m.group(0)
    new = re.sub(r"(hasOne|hasMany)\(\s*([A-Za-z_]+)::class\s*\)", has_repl, new)

    # tambien arreglar hasOne/hasMany si ya tiene un segundo arg incorrecto
    # generado por la version anterior del script. La heuristica: si el
    # segundo arg es FK_MAP[target] (que era el bug previo) y current
    # tiene su propia FK conocida distinta, sobreescribe.
    def has_fix_repl(m):
        rel = m.group(1)
        cls = m.group(2)
        existing = m.group(3)
        if fk_to_current and existing == FK_MAP.get(cls):
            return f"{rel}({cls}::class, '{fk_to_current}')"
        return m.group(0)
    new = re.sub(
        r"(hasOne|hasMany)\(\s*([A-Za-z_]+)::class\s*,\s*'([^']+)'\s*\)",
        has_fix_repl, new
    )

    if new != s:
        with open(path, 'w', encoding='utf-8', newline='\n') as f:
            f.write(new)
        return True
    return False


for fn in sorted(os.listdir(MODELS_DIR)):
    if fn.endswith('.php'):
        if patch_file(os.path.join(MODELS_DIR, fn)):
            print('PATCHED', fn)
