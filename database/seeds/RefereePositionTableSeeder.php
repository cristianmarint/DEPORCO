<?php

use App\Models\RefereePosition;
use Illuminate\Database\Seeder;

class ArbitroPuestoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        RefereePosition::create(array(
            'nombre' => 'Arbitro principal',
            'descripcion' => 'Arbitro #1 del encuntro',
            'user_id' => \App\User::all()->random()->id
        ));

        RefereePosition::create(array(
            'nombre' => 'Arbitro secundario',
            'descripcion' => 'Ayuda a tomar decisiones al arbitro principal',
            'user_id' => \App\User::all()->random()->id
        ));

        RefereePosition::create(array(
            'nombre' => 'Encargado de la planilla',
            'descripcion' => 'Ayuda a plasmar el enfrentamiento en los planillas',
            'user_id' => \App\User::all()->random()->id
        ));



    }
}
