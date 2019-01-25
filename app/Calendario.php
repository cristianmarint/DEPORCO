<?php


namespace App;

use Illuminate\Database\Eloquent\Model;

class Calendario extends Model
{
    protected $table = "calendario";


    protected $fillable = [
        'numero_jornada',
        'fecha',
        'torneo_id',
        'avance_id',
        'user_id'
    ];
}
