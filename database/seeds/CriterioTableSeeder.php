<?php

use App\Models\Criterio;
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
        Criterio::create(array(
           'descripcion' => 'Puntos victoria'
        ));

        Criterio::create(array(
            'descripcion' => 'Juego limpio'
        ));
    }
}
