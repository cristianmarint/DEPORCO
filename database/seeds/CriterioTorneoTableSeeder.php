<?php

use App\CriterioTorneo;
use Illuminate\Database\Seeder;

class CriterioTorneoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        CriterioTorneo::create(array(
           'criterio_id' => 1,
           'torneo_id' => 1
        ));
    }
}
