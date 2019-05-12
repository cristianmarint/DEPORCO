<?php

use App\Models\Resultado;
use Faker\Generator as Faker;

$factory->define(Resultado::class, function (Faker $faker) {
    return [
        'enfrentamiento_id' => factory(App\Models\Enfrentamiento::class),
        'resultado_local' => rand(0,10),
        'resultado_visitante' => rand(0,10)
    ];
});
