<?php

use App\Models\Foul;
use Faker\Generator as Faker;

$factory->define(Foul::class, function (Faker $faker) {
    return [
        'estadistica_id'           => \App\Models\PlayerMatchStat::all()->random()->id,
        'tiempo_enfrentamiento_id' => \App\Models\MatchPeriod::all()->random()->id,
        'minuto'                   => $faker->time('H:i:s', '01:30:00'),
    ];
});
