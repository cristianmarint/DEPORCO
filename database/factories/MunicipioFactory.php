<?php

use App\Municipio;
use App\Departamento;
use Faker\Generator as Faker;

$factory->define(Municipio::class, function (Faker $faker) {

    $countDepartamento = Departamento::count();

    return [
        'nombre' => $faker->name,
        'departamento_id' => rand(1,$countDepartamento)
    ];
});
