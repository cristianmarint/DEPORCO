<?php

use App\Arbitro;
use Faker\Generator as Faker;

$factory->define(Arbitro::class, function (Faker $faker) {
    return [
        'datos_basicos_id' => \App\DatosBasicos::all()->random()->id,
        'user_id' => 2
    ];
});
