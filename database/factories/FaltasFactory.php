<?php

use App\Faltas;
use Faker\Generator as Faker;

$factory->define(Faltas::class, function (Faker $faker) {
    return [
        'estadisticas_id' => \App\Estadisticas::all()->random()->id,
        'total' => rand(0, 5)
    ];
});
