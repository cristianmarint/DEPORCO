<?php

use App\Models\PlayerMatchStat;
use Faker\Generator as Faker;

$factory->define(PlayerMatchStat::class, function (Faker $faker) {
    $playerReg = \App\Models\PlayerRegistration::all()->random();
    $teamReg = \App\Models\TeamRegistration::find($playerReg->inscripcion_equipo_id);

    return [
        'inscripcion_equipo_id'  => $teamReg->id,
        'inscripcion_jugador_id' => $playerReg->id,
        'enfrentamiento_id'      => \App\Models\GameMatch::all()->random()->id,
        'user_id'                => 1,
    ];
});
