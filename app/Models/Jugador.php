<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Jugador extends Model{

    protected $table = "jugador";

    protected $fillable = [
        'nombre_acudiente',
    ];
}