<?php

use Illuminate\Database\Seeder;

class CriterioTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('criterio')->insert([
            'criterio'=> 'Número de partidos ganados'
        ]);
        DB::table('criterio')->insert([
            'criterio'=> 'Número de partidos perdidos'
        ]);
    }
}
