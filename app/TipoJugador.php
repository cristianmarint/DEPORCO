<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class TipoJugador extends Model{
    protected $table = "tipo_jugador";

    protected $fillable = [
        'cargo'
    ];

}
