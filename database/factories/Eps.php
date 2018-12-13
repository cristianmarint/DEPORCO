<?php

use App\Eps;
use Faker\Generator as Faker;



$factory->define(Eps::class, function (Faker $faker) {

    $tipos = ['EPS', 'AFP','ARL','PARAFISCAL'];

    return [
        'nit'       => $faker->numerify('##9######-#'),
        'nombre'        => $faker->name,
        'administradora'=> $faker->name,
        'tipo'          => $tipos[rand(0,3)],
        'codigo'        => $faker->bothify('*** - ###')
    ];
});
