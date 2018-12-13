<?php

use App\Municipio;
use App\Departamento;
use Faker\Generator as Faker;



$factory->define(Municipio::class, function (Faker $faker) {

    $countDepartamento = Departamento::count();

    return [
        'municipio' => $faker->city(),
        'id_departamento' => rand(1,$countDepartamento)
    ];
});
