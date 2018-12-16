<?php

use Illuminate\Database\Seeder;

class CalendarioTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('calendario')->insert([
            'torneo_id' => 1,    
            'avance_id' => 1,    
            'numero_jornada' => 1,    
            'fecha' => '2018-02-15 11:45:12',    
        ]);
    }
}
