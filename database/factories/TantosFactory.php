<?php

use App\Tantos;
use Faker\Generator as Faker;

$factory->define(Tantos::class, function (Faker $faker) {
    return [
        'estadisticas_id' => \App\Estadisticas::all()->random()->id,
        'tiempo_enfrentamiento_id' => \App\TiempoEnfrentamiento::all()->random()->id,
        'user_id' => 2,
        'minuto' => now()
    ];
});
