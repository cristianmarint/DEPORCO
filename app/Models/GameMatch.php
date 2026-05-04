<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

use Illuminate\Database\Eloquent\SoftDeletes;

class GameMatch extends Model{

    protected $table = "enfrentamiento";

    use SoftDeletes;

    protected $fillable = [
        'id',
        'calendario_id',
        'inscripcion_equipo_local_id',
        'inscripcion_equipo_visitante_id',
        'lugar_id',
        'user_id'
    ];

    public function calendario(){
        return $this->belongsTo(Schedule::class, 'calendario_id');
    }

    public function lugar(){
        return $this->belongsTo(Venue::class, 'lugar_id');
    }

    public function inscripcion_equipo_local(){
        return $this->belongsTo(TeamRegistration::class, 'inscripcion_equipo_local_id');
    }

    public function inscripcion_equipo_visitante(){
        return $this->belongsTo(TeamRegistration::class, 'inscripcion_equipo_visitante_id');
    }

    public function resultado(){
        return $this->hasOne(MatchResult::class, 'enfrentamiento_id');
    }
}