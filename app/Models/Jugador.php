<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

use Illuminate\Database\Eloquent\SoftDeletes;

class Jugador extends Model{

    use SoftDeletes;

    protected $table = "jugador";

    protected $fillable = [
        'nombre_acudiente',
        'datos_basicos_id',
        'telefono_acudiente_id',
        'user_id'
    ];
 
    public function inscripcionjugador(){
        return $this->hasOne(InscripcionJugador::class);
    }

    public function datos_basicos(){
        return $this->belongsTo(DatosBasicos::class);
    }

    public function telefono(){
        return $this->belongsTo(Telefono::class);
    }
}