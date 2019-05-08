<?php

use App\Models\EnfrentamientoArbitro;
use Faker\Generator as Faker;

$factory->define(\App\Models\EnfrentamientoArbitro::class, function (Faker $faker) {
    return [
        'arbitro_id' => \App\Models\Arbitro::all()->random()->id,
        'arbitro_puesto_id' => \App\Models\ArbitroPuesto::all()->random()->id,
        'enfrentamiento_id' => \App\Models\Enfrentamiento::all()->random()->id,
        'user_id' => \App\User::all()->random()->id
    ];
});
