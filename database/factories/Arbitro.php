<?php

use App\Arbitro;
use App\Datos_Basicos;
use Faker\Generator as Faker;



$factory->define(Arbitro::class, function (Faker $faker) {

    $cantidadDatos_basicos  = Datos_Basicos::count();

    return [
        'datos_basicos_id'          => rand(1,$cantidadDatos_basicos),
    ];
});
