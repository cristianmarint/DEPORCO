<?php

use App\Models\InscripcionEquipo;
use Faker\Generator as Faker;

$factory->define(InscripcionEquipo::class, function (Faker $faker) {
    return [
        'equipo_id' => \App\Models\Equipo::all()->random()->id,
        'torneo_id' => \App\Models\Torneo::all()->random()->id,
    ];
});
