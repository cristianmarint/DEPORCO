<?php

use App\Models\Card;
use Illuminate\Database\Seeder;

class CardTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Card::create(array(
            'nombre' => 'Amarilla',
            'descripcion' => 'Tarjeta Amarilla'
        ));

        Card::create(array(
            'nombre' => 'Roja',
            'descripcion' => 'Tarjeta Roja'
        ));

        Card::create(array(
            'nombre' => 'Azul',
            'descripcion' => 'Tarjeta Azul'
        ));
    }
}
