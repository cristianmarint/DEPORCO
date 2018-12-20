<?php

use App\Enfrentamiento_arbitro;
use App\Arbitro;
use App\Arbitro_puesto;
use App\Enfrentamiento;
use Faker\Generator as Faker;



$factory->define(Enfrentamiento_arbitro::class, function (Faker $faker) {

    $cantidadArbitro = Arbitro::count();
    $cantidadArbitroPuesto= Arbitro_puesto::count();
    $cantidadEnfrentamiento = Enfrentamiento::count();

    return [
        'arbitro_id'       => rand(1,$cantidadArbitro),
        'arbitro_puesto_id'=> rand(1,$cantidadArbitroPuesto),
        'enfrentamiento_id'=> rand(1,$cantidadEnfrentamiento),
    ];
});
