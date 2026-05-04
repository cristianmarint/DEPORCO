<?php

use App\Models\Goal;
use App\Models\MatchPeriod;
use App\Models\PlayerMatchStat;
use Illuminate\Database\Seeder;

class GoalTableSeeder extends Seeder
{
    /**
     * Distribuye anotaciones aleatorias entre las estadisticas existentes
     * (cerca de un 30% de las estadisticas reciben al menos una anotacion).
     */
    public function run()
    {
        $periods = MatchPeriod::pluck('id')->all();
        if (empty($periods)) {
            return;
        }

        foreach (PlayerMatchStat::all() as $stat) {
            if (random_int(1, 100) > 30) {
                continue;
            }
            $cantidad = random_int(1, 3);
            for ($i = 0; $i < $cantidad; $i++) {
                Goal::create([
                    'estadistica_id'           => $stat->id,
                    'tiempo_enfrentamiento_id' => $periods[array_rand($periods)],
                    'minuto'                   => gmdate('H:i:s', random_int(60, 5400)),
                    'anotacion'                => 1,
                    'user_id'                  => 1,
                ]);
            }
        }
    }
}
