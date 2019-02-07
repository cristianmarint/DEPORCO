<?php

use App\Models\FaltasTarjeta;
use Faker\Generator as Faker;

$factory->define(FaltasTarjeta::class, function (Faker $faker) {
    return [
        'faltas_id' => \App\Models\Faltas::all()->random()->id,
        'tarjetas_id' => \App\Models\Tarjetas::all()->random()->id
    ];
});
