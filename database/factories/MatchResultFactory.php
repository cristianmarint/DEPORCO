<?php

use App\Models\MatchResult;
use Faker\Generator as Faker;

$factory->define(MatchResult::class, function (Faker $faker) {
    return [
        'enfrentamiento_id' => factory(App\Models\GameMatch::class),
        'resultado_local' => rand(0,10),
        'resultado_visitante' => rand(0,10)
    ];
});
