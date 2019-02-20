<?php

use App\Models\Fase;
use Illuminate\Database\Seeder;

class FaseTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Fase::create(array(
            'nombre' => 'Fase de grupos',
            'descripcion' => 'Todos contra todos'
        ));

        Fase::create(array(
            'nombre' => 'Octavos de final',
            'descripcion' => 'Ultimos 16 equipos'
        ));

        Fase::create(array(
            'nombre' => 'Cuartos de final',
            'descripcion' => 'Ultimos 8 equipos'
        ));

        Fase::create(array(
            'nombre' => 'Semifinales',
            'descripcion' => 'Ultimos 4 equipos'
        ));

        Fase::create(array(
            'nombre' => 'Final',
            'descripcion' => 'Ultimo enfrentamiento'
        ));

    }
}
