<?php

use App\Models\Address;
use Faker\Generator as Faker;

$factory->define(Address::class, function (Faker $faker) {
    return [
        'calle' => $faker->streetName,
        'carrera' => $faker->numberBetween(1,50),
        'numero' => $faker->numberBetween(1,50)
    ];
});
