<?php

use App\Models\Municipio;
use App\Models\Departamento;
use Faker\Generator as Faker;

$factory->define(Municipio::class, function (Faker $faker) {
    return [
        'nombre' => $faker->city,
        'departamento_id' => factory(App\Models\Departamento::class)
    ];
});
