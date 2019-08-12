<?php

use App\Models\ArbitroPuesto;
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
        ArbitroPuesto::create(array(
            'nombre' => 'Arbitro principal',
            'descripcion' => 'Arbitro #1 del encuntro',
            'user_id' => \App\User::all()->random()->id
        ));

        ArbitroPuesto::create(array(
            'nombre' => 'Arbitro secundario',
            'descripcion' => 'Ayuda a tomar decisiones al arbitro principal',
            'user_id' => \App\User::all()->random()->id
        ));

        ArbitroPuesto::create(array(
            'nombre' => 'Encargado de la planilla',
            'descripcion' => 'Ayuda a plasmar el enfrentamiento en los planillas',
            'user_id' => \App\User::all()->random()->id
        ));



    }
}
