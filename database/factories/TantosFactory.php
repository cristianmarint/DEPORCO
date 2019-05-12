<?php

use App\Models\Tantos;
use Faker\Generator as Faker;

$factory->define(Tantos::class, function (Faker $faker) {
    return [
        'estadisticas_id' => \App\Models\Estadisticas::all()->random()->id,
        'tiempo_enfrentamiento_id' => \App\Models\TiempoEnfrentamiento::all()->random()->id,
        'minuto' => now(),
        'minuto' => $faker->time('H:i:s','20:00:00'),
        'user_id' => \App\User::all()->random()->id
    ];
});
