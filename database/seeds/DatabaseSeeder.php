<?php

use Illuminate\Database\Seeder;

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
            'departamento',
            'municipio',
            'telefono',
            'tipo_sangre',
            'genero',
            'eps',
            'direccion',
            'datos_basicos',
            'tipo_educacion',
            'instituto',
            'color',
            'equipo',
            'tarjeta',
            'categoria',
            'tarjeta_categoria',
            'temporada',
            'criterio',
            'torneo',
            'criterio_torneo',
            'jugador',
            'programa',
            'tipo_jugador',
            'inscripcion_equipo',
            'inscripcion_jugador',
            'fase',
            'calendario',
            'arbitro',
            'arbitro_puesto',
            'lugar',
            'enfrentamiento',
            'enfrentamiento_arbitro',
            'tiempo_enfrentamiento',
            'resultado',
            'estadistica',
            'anotacion',
            'falta',
        ]);


        $this->call(VoyagerDatabaseSeeder::class);
        $this->call(MunicipioTableSeeder::class);
        $this->call(TipoSangreTableSeeder::class);
        $this->call(GeneroTableSeeder::class);
        $this->call(EpsTableSeeder::class);
        $this->call(DireccionTableSeeder::class);        
        $this->call(DatosBasicosTableSeeder::class);
        $this->call(UsersTableSeeder::class);
        $this->call(TipoEducacionTableSeeder::class);
        $this->call(InstitutoTableSeeder::class);
        $this->call(ColorTableSeeder::class);
        $this->call(TarjetaTableSeeder::class);
        $this->call(CategoriaTableSeeder::class);
        $this->call(TarjetaCategoriaTableSeeder::class);
        $this->call(TemporadaTableSeeder::class);
        $this->call(CriterioTableSeeder::class);
        $this->call(TorneoTableSedeer::class);
        $this->call(CriterioTorneoTableSeeder::class);
        $this->call(JugadorTableSeeder::class); 
        $this->call(ProgramaTableSeeder::class);
        $this->call(TipoJugadorTableSeeder::class);
        $this->call(LugarTableSeeder::class);
        $this->call(ArbitroPuestoTableSeeder::class);
        $this->call(FaseTableSeeder::class);        
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
