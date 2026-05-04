<?php

use App\Models\Phase;
use Illuminate\Database\Seeder;

class PhaseTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Phase::create(array(
            'nombre' => 'Fase de grupos',
            'descripcion' => 'Todos contra todos'
        ));

        Phase::create(array(
            'nombre' => 'Octavos de final',
            'descripcion' => 'Ultimos 16 equipos'
        ));

        Phase::create(array(
            'nombre' => 'Cuartos de final',
            'descripcion' => 'Ultimos 8 equipos'
        ));

        Phase::create(array(
            'nombre' => 'Semi-finales',
            'descripcion' => 'Ultimos 4 equipos'
        ));

        Phase::create(array(
            'nombre' => 'Pre-Final',
            'descripcion' => 'Tercero Y Cuarto Puesto'
        ));

        Phase::create(array(
            'nombre' => 'Final',
            'descripcion' => 'Primero Y Segundo Puesto'
        ));

    }
}
