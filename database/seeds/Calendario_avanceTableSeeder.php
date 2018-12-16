<?php

use Illuminate\Database\Seeder;

class Calendario_avanceTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('calendario_avance')->insert([
             'avance' => 'Fase de grupos',    
         ]);
        DB::table('calendario_avance')->insert([
             'avance' => 'Octavos',    
         ]);
        DB::table('calendario_avance')->insert([
             'avance' => 'Cuartos',    
         ]);
        DB::table('calendario_avance')->insert([
             'avance' => 'Semifinal',    
         ]);
        DB::table('calendario_avance')->insert([
             'avance' => '3 y 4 puesto',    
         ]);
        DB::table('calendario_avance')->insert([
             'avance' => 'Final',    
         ]);
    }
}
