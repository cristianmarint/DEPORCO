<?php

use App\Temporada;
use Illuminate\Database\Seeder;

class TemporadaTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Temporada::create(array(
            'descripcion' => '2019-1',
            'fecha_inicio' => '2019/01/14',
            'fecha_fin' => '2019/06/30'
        ));
    }
}
