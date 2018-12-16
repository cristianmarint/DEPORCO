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
            'users',
            'departamentos',
            'municipios',
            'institutos',
            'equipos',
            'temporada',
            'categoria',
            'torneo',
            'inscripcion',
            'telefono',
            'sangre',
            'sexo',
            'eps',
            'direccion',
            'datos_basicos',
            'permisos',
            'roles',
            'roles_permisos',
            'usuarios_permisos',
            'jugador',
            'criterio',
            'criterio_torneo',
            'calendario_avance',
            'calendario',
        ]);

        //Ejecucion de los Seeders:
        $this->call(DepartamentoTableSeeder::class);
        $this->call(MunicipioTableSeeder::class);
        $this->call(TemporadaSeeder::class);
        $this->call(CategoriaSeeder::class);
        $this->call(TelefonoTableSeeder::class);
        $this->call(SangreTableSeeder::class);
        $this->call(SexoTableSeeder::class);
        $this->call(EpsTableSeeder::class);
        $this->call(DireccionTableSeeder::class);
        $this->call(DatosBasicosTableSeeder::class);
        $this->call(PermisosTableSeeder::class);
        $this->call(RolesTableSeeder::class);
        $this->call(Roles_permisosTableSeeder::class);
        $this->call(UsersSeeder::class);
        $this->call(Usuarios_permisosTableSeeder::class);
        $this->call(JugadorTableSeeder::class);
        $this->call(InstitutoSeeder::class);
        $this->call(EquipoSeeder::class);
        $this->call(TorneoSeeder::class);
        $this->call(CriterioTableSeeder::class);
        $this->call(Criterio_torneoTableSeeder::class);
        $this->call(Inscripcion_equipoSeeder::class);
        $this->call(Calendario_avanceTableSeeder::class);
        $this->call(CalendarioTableSeeder::class);
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
