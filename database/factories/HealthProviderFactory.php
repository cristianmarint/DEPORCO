<?php

use App\Models\HealthProvider;
use Faker\Generator as Faker;

$factory->define(HealthProvider::class, function (Faker $faker) {
    $tipos = ['EPS', 'AFP','ARL','PARAFISCAL'];

    return [
        'nit'       => $faker->unixTime(),
        'nombre'        => $faker->company(),
        'administradora'=> $faker->companySuffix(),
        'tipo'          => $tipos[rand(0,3)],
        'codigo'        => $faker->bothify('*** - ###')
    ];
});
