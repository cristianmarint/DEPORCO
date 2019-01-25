<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class EnfrentamientoArbitro extends Model{

    protected $table = "enfrentamiento_arbitro";

    protected $fillable = [
        'arbitro_id',
        'arbitro_puesto_id',
        'enfrentamiento_id',
        'user_id'
    ];
}