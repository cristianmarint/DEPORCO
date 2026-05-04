<?php

use App\Models\Player;
use Faker\Generator as Faker;

$factory->define(Player::class, function (Faker $faker) {
    return [
        'nombre_acudiente' => $faker->name,
        'datos_basicos_id' => factory(App\Models\Profile::class),
        'telefono_acudiente_id' => factory(App\Models\Phone::class),
        'user_id' => \App\User::all()->random()->id
    ];
});
