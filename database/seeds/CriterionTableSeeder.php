<?php

use App\Models\Criterion;
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
        Criterion::create(array(
           'nombre' => 'Puntos por victoria',
           'descripcion' => 'Otorga Puntos por victoria'
        ));

        Criterion::create(array(
            'nombre' => 'Juego limpio',
            'descripcion' => 'Valora el Juego limpio'
        ));
    }
}
