<?php

use App\ColoresUniforme;
use Faker\Generator as Faker;

$factory->define(ColoresUniforme::class, function (Faker $faker) {
    return [
        'color' => $faker->colorName
    ];
});
