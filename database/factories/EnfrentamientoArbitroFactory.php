<?php

use App\Models\EnfrentamientoArbitro;
use Faker\Generator as Faker;

$factory->define(EnfrentamientoArbitro::class, function (Faker $faker) {
    return [
        'arbitro_id' => factory(App\Models\Arbitro::class),
        'arbitro_puesto_id' => \App\Models\ArbitroPuesto::all()->random()->id,
        'enfrentamiento_id' => \App\Models\Enfrentamiento::all()->random()->id,
        'user_id' => \App\User::all()->random()->id
    ];
});
