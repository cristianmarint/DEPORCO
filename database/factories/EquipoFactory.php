<?php

use App\Equipo;
use Faker\Generator as Faker;



$factory->define(Equipo::class, function (Faker $faker) {

    return [
        'id_instituto' => rand(1,3),
        'nombre_equipo' => $faker->name(),
        'colores_uniforme' => $faker->safeColorName(),
        'logo'               => $faker->imageUrl(),
    ];
});
