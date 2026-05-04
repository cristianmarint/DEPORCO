<?php

use App\Models\Goal;
use Faker\Generator as Faker;

$factory->define(Goal::class, function (Faker $faker) {
    return [
        'estadistica_id'           => \App\Models\PlayerMatchStat::all()->random()->id,
        'tiempo_enfrentamiento_id' => \App\Models\MatchPeriod::all()->random()->id,
        'minuto'                   => $faker->time('H:i:s', '01:30:00'),
        'anotacion'                => 1,
        'user_id'                  => 1,
    ];
});
