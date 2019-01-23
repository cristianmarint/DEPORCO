<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class InscripcionJugador extends Model
{
    protected $table = "inscripcion_jugador";

    protected $fillable = [
      'capitan'
    ];
}