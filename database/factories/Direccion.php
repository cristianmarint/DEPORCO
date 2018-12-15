<?php

use App\Direccion;
use Faker\Generator as Faker;



$factory->define(Direccion::class, function (Faker $faker) {

    return [
        'direccion'         => $faker->streetAddress(),
    ];
});
