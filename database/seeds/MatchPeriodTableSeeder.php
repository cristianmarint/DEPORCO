<?php

use App\Models\MatchPeriod;
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
        MatchPeriod::create(array(
            'tiempo' => 'Primer tiempo'
        ));

        MatchPeriod::create(array(
            'tiempo' => 'Segundo tiempo'
        ));

        MatchPeriod::create(array(
            'tiempo' => 'Tercer tiempo'
        ));

        MatchPeriod::create(array(
            'tiempo' => 'Cuerto tiempo'
        ));

        MatchPeriod::create(array(
            'tiempo' => 'Primer tiempo extra'
        ));

        MatchPeriod::create(array(
            'tiempo' => 'Segundo tiempo extra'
        ));

        MatchPeriod::create(array(
            'tiempo' => 'Penales'
        ));
    }
}
