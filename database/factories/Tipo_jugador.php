<?php

use App\Tipo_jugador;
use Faker\Generator as Faker;



$factory->define(Tipo_jugador::class, function (Faker $faker) {

    return [
        'tipo'=>$faker->jobTitle(),
    ];
});
