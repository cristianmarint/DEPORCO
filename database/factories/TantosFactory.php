<?php

use App\Models\Tantos;
use Faker\Generator as Faker;

$factory->define(Tantos::class, function (Faker $faker) {
    return [
        'estadisticas_id' => \App\Models\Estadisticas::all()->random()->id,
        'tiempo_enfrentamiento_id' => \App\Models\TiempoEnfrentamiento::all()->random()->id,
        'minuto' => now(),
        'user_id' => \App\User::all()->random()->id
    ];
});
