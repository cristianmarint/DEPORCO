<?php

use App\FaltasTarjeta;
use Faker\Generator as Faker;

$factory->define(FaltasTarjeta::class, function (Faker $faker) {
    return [
        'faltas_id' => \App\Faltas::all()->random()->id,
        'tarjetas_id' => \App\Tarjetas::all()->random()->id
    ];
});
