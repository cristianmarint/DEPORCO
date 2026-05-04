<?php

use App\Models\Goal;
use Faker\Generator as Faker;

$factory->define(Goal::class, function (Faker $faker) {
    return [
        'estadistica_id' => \App\Models\Estadisticas::all()->random()->id,
        'tiempo_enfrentamiento_id' => \App\Models\MatchPeriod::all()->random()->id,
        'minuto' => $faker->time('H:i:s','20:00:00'),
        'user_id' => \App\User::all()->random()->id
    ];
});
