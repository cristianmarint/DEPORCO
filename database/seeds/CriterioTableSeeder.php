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
           'nombre' => 'Puntos por victoria',
           'descripcion' => 'Otorga Puntos por victoria'
        ));

        Criterio::create(array(
            'nombre' => 'Juego limpio',
            'descripcion' => 'Valora el Juego limpio'
        ));
    }
}
