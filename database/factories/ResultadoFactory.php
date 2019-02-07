<?php

use App\Models\Resultado;
use Faker\Generator as Faker;

$factory->define(Resultado::class, function (Faker $faker) {
    return [
        'enfrentamiento_id' => \App\Models\Enfrentamiento::all()->random()->id,
        'resultado_local' => rand(0,5),
        'resultado_visitante' => rand(0,5)
    ];
});
