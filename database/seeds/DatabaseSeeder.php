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
            'fase',
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


        $this->call(VoyagerDatabaseSeeder::class);
        // $this->call(DepartamentoTableSeeder::class); //Se comentó ya que se llama en otro seeder 1
        $this->call(MunicipioTableSeeder::class);

        // $this->call(TelefonoTableSeeder::class); //Se comentó ya que se llama en otro seeder 0
        $this->call(TipoSangreTableSeeder::class);
        $this->call(GeneroTableSeeder::class);
        $this->call(EpsTableSeeder::class);
        $this->call(DireccionTableSeeder::class);
        
        $this->call(DatosBasicosTableSeeder::class);
        $this->call(UsersTableSeeder::class);
        $this->call(TipoEducacionTableSeeder::class);
        $this->call(InstitutoTableSeeder::class);
        $this->call(ColoresTableSeeder::class);
        // $this->call(EquipoTableSeeder::class); // Se comentó para test Mundial FIFA 1
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
        // $this->call(InscripcionEquipoTableSeeder::class); // Se comentó para test Mundial FIFA 1
        // $this->call(InscripcionJugadorTableSeeder::class); // Se comentó para test Mundial FIFA 1
        // $this->call(CalendarioTableSeeder::class);
        // $this->call(ArbitroTableSeeder::class); //Se comentó ya que se llama en otro seeder 0
        $this->call(LugarTableSeeder::class);
        // $this->call(EnfrentamientoTableSeeder::class); //Se comentó ya que se llama en otro seeder 0
        // $this->call(ResultadoTableSeeder::class); // Se comentó para test Mundial FIFA 1
        $this->call(ArbitroPuestoTableSeeder::class);
        // $this->call(EnfrentamientoArbitroTableSeeder::class);  // Se comentó para test Mundial FIFA 1
        // $this->call(TiempoEnfrentamientoTableSeeder::class); // Se comentó para test Mundial FIFA 1
        // $this->call(EstadisticasTableSeeder::class); // Se comentó para test Mundial FIFA 1
        // $this->call(TantosTableSeeder::class);  // Se comentó para test Mundial FIFA 1
        // $this->call(FaltasTableSeeder::class); // Se comentó para test Mundial FIFA 1
        // $this->call(FaltasTarjetaTableSeeder::class); // Se comentó para test Mundial FIFA 1
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
