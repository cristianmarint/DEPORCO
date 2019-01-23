<?php

use App\InscripcionEquipo;
use Faker\Generator as Faker;

$factory->define(InscripcionEquipo::class, function (Faker $faker) {
    return [
        'equipo_id' => \App\Equipo::all()->random()->id,
        'torneo_id' => 1,
    ];
});
