<?php

use App\Tarjetas;
use Illuminate\Database\Seeder;

class TarjetasTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Tarjetas::create(array(
            'nombre' => 'Amarilla',
            'descripcion' => 'Tarjeta Amarilla'
        ));

        Tarjetas::create(array(
            'nombre' => 'Roja',
            'descripcion' => 'Tarjeta Roja'
        ));

        Tarjetas::create(array(
            'nombre' => 'Azul',
            'descripcion' => 'Tarjeta Azul'
        ));
    }
}
