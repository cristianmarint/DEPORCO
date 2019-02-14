<?php

use App\Models\Colores;
use Faker\Generator as Faker;

$factory->define(Colores::class, function (Faker $faker) {
    return [
        'color' => $faker->colorName
    ];
});
