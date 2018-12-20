<?php

use Illuminate\Database\Seeder;

class Arbitro_puestoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('arbitro_puesto')->insert([
            'puesto' => 'Principal',    
        ]);
        DB::table('arbitro_puesto')->insert([
            'puesto' => 'Banda',    
        ]);
        DB::table('arbitro_puesto')->insert([
            'puesto' => 'Asistente',    
        ]);
    }
}
