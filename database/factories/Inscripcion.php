<?php

use App\Inscripcion;
use App\Equipo;
use Faker\Generator as Faker;



$factory->define(Inscripcion::class, function (Faker $faker) {

    $cantidadEquipo = Equipo::count();

    return [
        'equipo_id'       => rand(1,$cantidadEquipo),
        'torneo_id'        => 1,
        'puntos'=> rand(1,20),
    ];
});
