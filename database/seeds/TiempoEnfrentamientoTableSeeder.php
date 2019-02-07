<?php

use App\TiempoEnfrentamiento;
use Illuminate\Database\Seeder;

class TiempoEnfrentamientoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        TiempoEnfrentamiento::create(array(
            'tiempo' => 'Primer tiempo'
        ));

        TiempoEnfrentamiento::create(array(
            'tiempo' => 'Segundo tiempo'
        ));

        TiempoEnfrentamiento::create(array(
            'tiempo' => 'Tercer tiempo'
        ));

        TiempoEnfrentamiento::create(array(
            'tiempo' => 'Cuerto tiempo'
        ));

        TiempoEnfrentamiento::create(array(
            'tiempo' => 'Primer tiempo extra'
        ));

        TiempoEnfrentamiento::create(array(
            'tiempo' => 'Segundo tiempo extra'
        ));

        TiempoEnfrentamiento::create(array(
            'tiempo' => 'Penales'
        ));
    }
}
