<?php

use App\Models\Foul;
use App\Models\MatchPeriod;
use App\Models\PlayerMatchStat;
use Illuminate\Database\Seeder;

class FoulTableSeeder extends Seeder
{
    /**
     * Asigna faltas aleatorias a estadisticas existentes (~20%).
     */
    public function run()
    {
        $periods = MatchPeriod::pluck('id')->all();
        if (empty($periods)) {
            return;
        }

        foreach (PlayerMatchStat::all() as $stat) {
            if (random_int(1, 100) > 20) {
                continue;
            }
            Foul::create([
                'estadistica_id'           => $stat->id,
                'tiempo_enfrentamiento_id' => $periods[array_rand($periods)],
                'minuto'                   => gmdate('H:i:s', random_int(60, 5400)),
            ]);
        }
    }
}
