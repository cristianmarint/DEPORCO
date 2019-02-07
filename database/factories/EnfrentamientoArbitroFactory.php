<?php

use App\EnfrentamientoArbitro;
use Faker\Generator as Faker;

$factory->define(\App\EnfrentamientoArbitro::class, function (Faker $faker) {
    return [
        'arbitro_id' => \App\Arbitro::all()->random()->id,
        'arbitro_puesto_id' => \App\ArbitroPuesto::all()->random()->id,
        'enfrentamiento_id' => \App\Enfrentamiento::all()->random()->id,
        'user_id' => 2
    ];
});
