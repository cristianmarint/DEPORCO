<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class InscripcionJugador extends Model
{
    protected $table = "inscripcion_jugador";

    use SoftDeletes;

    protected $fillable = [
      'capitan',
      'jugador_id',
      'inscripcion_equipo_id',
      'programa_id',
      'tipo_jugador_id'
    ];

    public function jugador(){
      return $this->belongsTo(jugador::class);
    }

    public function inscripcionequipo(){
      return $this->belongsTo(InscripcionEquipo::class);
    }
}