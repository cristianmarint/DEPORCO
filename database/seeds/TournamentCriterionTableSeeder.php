<?php

use App\Models\TournamentCriterion;
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
        TournamentCriterion::create(array(
           'criterio_id' => 1,
           'torneo_id' => 1
        ));
    }
}
