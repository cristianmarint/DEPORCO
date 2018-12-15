<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Jugador extends Model{

    protected $table = "jugador";

    protected $fillable = [
        'usuario_id',
        'datos_basicos_id',
        'telefono_acudiente_id',
        'nombre_completo_acudiente',
    ];
}