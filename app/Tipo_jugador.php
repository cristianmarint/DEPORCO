<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Tipo_jugador extends Model{
    protected $table = "tipo_jugador";

    protected $fillable = [
        'id_tipo_jugador',
        'tipo'
    ];

}
