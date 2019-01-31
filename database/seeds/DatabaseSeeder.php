<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->truncateTables([
            'departamento',
            'municipio',
            'telefono',
            'tipo_sangre',
            'genero',
            'eps',
            'direccion',
            'datos_basicos',
            'permisos',
            'roles',
            'roles_permisos',
            'users',
            'tipo_educacion',
            'instituto',
            'colores',
            'equipo',
            'tarjetas',
            'categoria',
            'tarjetas_categoria',
            'temporada',
            'criterio',
            'torneo',
            'criterio_torneo',
            'jugador',
            'programa',
            'tipo_jugador',
            'inscripcion_equipo',
            'inscripcion_jugador',
            'calendario_avance',
            'calendario',
            'arbitro',
            'arbitro_puesto',
            'lugar',
            'enfrentamiento',
            'enfrentamiento_arbitro',
            'tiempo_enfrentamiento',
            'resultado',
            'estadisticas',
            'tantos',
            'faltas',
            'faltas_tarjeta'
        ]);

        //Ejecucion de los Seeders:
        $this->call(DepartamentoTableSeeder::class);
        $this->call(MunicipioTableSeeder::class);
        $this->call(TelefonoTableSeeder::class);
        $this->call(TipoSangreTableSeeder::class);
        $this->call(GeneroTableSeeder::class);
        $this->call(EpsTableSeeder::class);
        $this->call(DireccionTableSeeder::class);
        $this->call(DatosBasicosTableSeeder::class);
        $this->call(PermisosTableSeeder::class);
        $this->call(RolesTableSeeder::class);
        $this->call(RolesPermisosTableSeeder::class);
        $this->call(UsersTableSeeder::class);
        $this->call(TipoEducacionTableSeeder::class);
        $this->call(InstitutoTableSeeder::class);
        $this->call(ColoresTableSeeder::class);
        $this->call(EquipoTableSeeder::class);
        $this->call(TarjetasTableSeeder::class);
        $this->call(CategoriaTableSeeder::class);
        $this->call(TarjetasCategoriaTableSeeder::class);
        $this->call(TemporadaTableSeeder::class);
        $this->call(CriterioTableSeeder::class);
        $this->call(TorneoTableSedeer::class);
        $this->call(CriterioTorneoTableSeeder::class);
        $this->call(JugadorTableSeeder::class);
        $this->call(ProgramaTableSeeder::class);
        $this->call(TipoJugadorTableSeeder::class);
        $this->call(InscripcionEquipoTableSeeder::class);
        $this->call(InscripcionJugadorTableSeeder::class);
        $this->call(CalendarioAvanceTableSeeder::class);
        $this->call(CalendarioTableSeeder::class);
        $this->call(ArbitroTableSeeder::class);
        $this->call(ArbitroPuestoTableSeeder::class);
        $this->call(LugarTableSeeder::class);
        $this->call(EnfrentamientoTableSeeder::class);
        $this->call(EnfrentamientoArbitroTableSeeder::class);
        $this->call(TiempoEnfrentamientoTableSeeder::class);
        $this->call(ResultadoTableSeeder::class);
        $this->call(EstadisticasTableSeeder::class);
        $this->call(TantosTableSeeder::class);
        $this->call(FaltasTableSeeder::class);
        $this->call(FaltasTarjetaTableSeeder::class);
    }

    public function truncateTables(array $tables)
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0;');

        foreach ($tables as $table) {
            DB::table($table)->truncate();
        }

        DB::statement('SET FOREIGN_KEY_CHECKS = 1;');
    }
}
