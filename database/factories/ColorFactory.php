<?php

use App\Models\Color;
use Faker\Generator as Faker;

$factory->define(Color::class, function (Faker $faker) {
    return [
        'nombre' => $faker->unique()->colorName
    ];
});
