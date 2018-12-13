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
            'datos_basicos'
        ]);

        //Ejecucion de los Seeders:
        $this->call(DepartamentoTableSeeder::class);
        $this->call(MunicipioTableSeeder::class);
        $this->call(UsersSeeder::class);
        $this->call(InstitutoSeeder::class);
        $this->call(EquipoSeeder::class);
        $this->call(TemporadaSeeder::class);
        $this->call(CategoriaSeeder::class);
        $this->call(TorneoSeeder::class);
        $this->call(Inscripcion_equipoSeeder::class);
        $this->call(TelefonoTableSeeder::class);
        $this->call(SangreTableSeeder::class);
        $this->call(SexoTableSeeder::class);
        $this->call(EpsTableSeeder::class);
        $this->call(DireccionTableSeeder::class);
        $this->call(DatosBasicosTableSeeder::class);
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
