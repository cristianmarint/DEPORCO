<?php

use App\CalendarioAvance;
use Illuminate\Database\Seeder;

class CalendarioAvanceTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        CalendarioAvance::create(array(
            'avance' => 'Fase de grupos',
            'descripcion' => 'Todos contra todos'
        ));

        CalendarioAvance::create(array(
            'avance' => 'Octavos de final',
            'descripcion' => 'Ultimos 16 equipos'
        ));

        CalendarioAvance::create(array(
            'avance' => 'Cuartos de final',
            'descripcion' => 'Ultimos 8 equipos'
        ));

        CalendarioAvance::create(array(
            'avance' => 'Semifinales',
            'descripcion' => 'Ultimos 4 equipos'
        ));

        CalendarioAvance::create(array(
            'avance' => 'Final',
            'descripcion' => 'Ultimo enfrentamiento'
        ));

    }
}
