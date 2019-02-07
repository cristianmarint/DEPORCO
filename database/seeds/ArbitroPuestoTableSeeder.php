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
            'puesto' => 'Arbitro principal',
            'descripcion' => 'Arbitro #1 del encuntro',
            'user_id' => 2
        ));

        ArbitroPuesto::create(array(
            'puesto' => 'Arbitro secundario',
            'descripcion' => 'Ayuda a tomar decisiones al arbitro principal',
            'user_id' => 2
        ));

        ArbitroPuesto::create(array(
            'puesto' => 'Encargado de la planilla',
            'descripcion' => 'Ayuda a plasmar el enfrentamiento en los planillas',
            'user_id' => 2
        ));



    }
}
