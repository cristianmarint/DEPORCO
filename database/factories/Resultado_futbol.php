<?php

use App\Resultado_futbol;
use App\Enfrentamiento;
use Faker\Generator as Faker;



$factory->define(Resultado_futbol::class, function (Faker $faker) {
    
    $cantidadEnfrentamiento = Enfrentamiento::count();

    return [
        'enfrentamiento_id' => rand(1,$cantidadEnfrentamiento),
        'resultado_local' => rand(0,5),
        'resultado_visitante' => rand(0,5),
    ];
});
