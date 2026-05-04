<?php

use App\Models\Faltas;
use Faker\Generator as Faker;

$factory->define(Foul::class, function (Faker $faker) {
    return [
        'estadisticas_id' => \App\Models\Estadisticas::all()->random()->id,
        'total' => rand(0, 5)
    ];
});
