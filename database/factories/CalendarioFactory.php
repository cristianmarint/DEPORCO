<?php

use App\Models\Calendario;
use Faker\Generator as Faker;

$factory->define(Calendario::class, function (Faker $faker) {
    return [
        'jornada' => $faker->numberBetween(1,50),
        'fecha' => $faker->date(),
        'torneo_id' => \App\Models\Torneo::all()->random()->id,
        'fase_id' => \App\Models\Fase::all()->random()->id,
        'user_id' => \App\User::all()->random()->id
    ];
});
