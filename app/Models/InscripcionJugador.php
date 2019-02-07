<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class InscripcionJugador extends Model
{
    protected $table = "inscripcion_jugador";

    protected $fillable = [
      'capitan'
    ];
}