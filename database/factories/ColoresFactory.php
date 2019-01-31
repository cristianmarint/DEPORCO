<?php

use App\Colores;
use Faker\Generator as Faker;

$factory->define(Colores::class, function (Faker $faker) {
    return [
        'color' => $faker->colorName
    ];
});
