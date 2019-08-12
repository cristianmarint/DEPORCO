<?php

use App\Models\Anotacion;
use Faker\Generator as Faker;

$factory->define(Anotacion::class, function (Faker $faker) {
    return [
        'estadistica_id' => \App\Models\Estadisticas::all()->random()->id,
        'tiempo_enfrentamiento_id' => \App\Models\TiempoEnfrentamiento::all()->random()->id,
        'minuto' => $faker->time('H:i:s','20:00:00'),
        'user_id' => \App\User::all()->random()->id
    ];
});
