<?php

use App\Models\Team;
use Faker\Generator as Faker;

$factory->define(Team::class, function (Faker $faker) {
    return [
        'nombre' => $faker->unique()->streetName,
        'logo' => random_pic('public/storage/storage/img/equipo/test'),
        'instituto_id' => factory(App\Models\Institution::class),
        'color_id' => factory(App\Models\Color::class),
        'user_id' => 2
    ];
});
