<?php

use App\Programa;
use Faker\Generator as Faker;



$factory->define(Programa::class, function (Faker $faker) {

    return [
        'programa'         => $faker->unique()->word(),
        'descripcion'      => $faker->text($maxNbChars = 300),
    ];
});
