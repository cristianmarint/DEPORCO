<?php

use App\Models\Tarjeta;
use Illuminate\Database\Seeder;

class TarjetaTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Tarjeta::create(array(
            'nombre' => 'Amarilla',
            'descripcion' => 'Tarjeta Amarilla'
        ));

        Tarjeta::create(array(
            'nombre' => 'Roja',
            'descripcion' => 'Tarjeta Roja'
        ));

        Tarjeta::create(array(
            'nombre' => 'Azul',
            'descripcion' => 'Tarjeta Azul'
        ));
    }
}
