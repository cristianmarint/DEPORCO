<?php

use App\Models\Temporada;
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
            'nombre' => 'Primera temporada 2019-1',
            'descripcion' => '2019-1',
            'fecha_inicio' => '2019/01/14',
            'fecha_fin' => '2019/06/30'
        ));
        Temporada::create(array(
            'nombre' => 'Segunda temporada 2018-2',
            'descripcion' => '2018-2',
            'fecha_inicio' => '2018/07/4',
            'fecha_fin' => '2019/10/3'
        ));
        Temporada::create(array(
            'nombre' => 'Primera temporada 2018-1',
            'descripcion' => '2018-1',
            'fecha_inicio' => '2018/02/1',
            'fecha_fin' => '2018/05/3'
        ));
    }
}
