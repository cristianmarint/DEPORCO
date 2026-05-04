<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

use Illuminate\Database\Eloquent\SoftDeletes;

class Player extends Model{

    use SoftDeletes;

    protected $table = "jugador";

    protected $fillable = [
        'nombre_acudiente',
        'datos_basicos_id',
        'telefono_acudiente_id',
        'user_id'
    ];
 
    public function inscripcionjugador(){
        return $this->hasOne(PlayerRegistration::class, 'jugador_id');
    }

    public function datos_basicos(){
        return $this->belongsTo(Profile::class, 'datos_basicos_id');
    }

    public function telefono(){
        return $this->belongsTo(Phone::class, 'telefono_id');
    }
}