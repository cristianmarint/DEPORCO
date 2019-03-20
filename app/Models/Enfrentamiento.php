<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

use Illuminate\Database\Eloquent\SoftDeletes;

class Enfrentamiento extends Model{

    protected $table = "enfrentamiento";

    use SoftDeletes;

    protected $fillable = [
        'calendario_id',
        'inscripcion_equipo_local_id',
        'inscripcion_equipo_visitante_id',
        'lugar_id',
        'user_id'
    ];

    public function calendario(){
        return $this->belongsTo(Calendario::class);
    }

    protected function lugar(){
        return $this->belongsTo(Lugar::class);
    }
}