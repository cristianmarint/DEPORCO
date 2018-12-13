<?php

use App\Direccion;
use Faker\Generator as Faker;



$factory->define(Direccion::class, function (Faker $faker) {

    return [
        'calle'         => $faker->streetName(),
        'carrera'       => $faker->streetName(),
        'numero'        => $faker->buildingNumber()
    ];
});
