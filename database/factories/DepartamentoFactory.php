<?php

use App\Models\Departamento;
use Faker\Generator as Faker;

$factory->define(Departamento::class, function (Faker $faker) {

    return [
        'nombre' => $faker->state
    ];
});
