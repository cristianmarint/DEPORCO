<?php

use App\Models\Equipo;
use Faker\Generator as Faker;

$factory->define(Equipo::class, function (Faker $faker) {
    return [
        'nombre' => $faker->unique()->streetName,
        'logo' => random_pic('public/storage/storage/img/equipo/test'),
        'instituto_id' => factory(App\Models\Instituto::class),
        'colores_id' => factory(App\Models\Colores::class),
        'user_id' => 2
    ];
});
