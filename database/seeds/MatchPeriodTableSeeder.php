<?php

use App\Models\MatchPeriod;
use Illuminate\Database\Seeder;

class MatchPeriodTableSeeder extends Seeder
{
    /**
     * Crea los periodos de tiempo de un partido (futbol/baloncesto).
     */
    public function run()
    {
        $periodos = [
            ['nombre' => 'Primer tiempo'],
            ['nombre' => 'Segundo tiempo'],
            ['nombre' => 'Tercer tiempo'],
            ['nombre' => 'Cuarto tiempo'],
            ['nombre' => 'Primer tiempo extra'],
            ['nombre' => 'Segundo tiempo extra'],
            ['nombre' => 'Penales'],
        ];

        foreach ($periodos as $p) {
            MatchPeriod::create($p);
        }
    }
}
