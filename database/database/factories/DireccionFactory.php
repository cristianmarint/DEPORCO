<?php

use App\Direccion;
use Faker\Generator as Faker;

$factory->define(Direccion::class, function (Faker $faker) {
    return [
        'calle' => $faker->streetName,
        'carrera' => $faker->numberBetween(1,50),
        'numero' => $faker->numberBetween(1,50)
    ];
});
