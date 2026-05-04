<?php

use App\Models\GameMatch;
use App\Models\MatchResult;
use Illuminate\Database\Seeder;

class MatchResultTableSeeder extends Seeder
{
    /**
     * Crea un resultado por cada enfrentamiento existente.
     */
    public function run()
    {
        foreach (GameMatch::all() as $match) {
            MatchResult::create([
                'enfrentamiento_id'  => $match->id,
                'resultado_local'    => random_int(0, 5),
                'resultado_visitante'=> random_int(0, 5),
            ]);
        }
    }
}
