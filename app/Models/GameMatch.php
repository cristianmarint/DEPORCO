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
        return $this->belongsTo(Schedule::class);
    }

    protected function lugar(){
        return $this->belongsTo(Venue::class);
    }

    protected function inscripcion_equipo_local(){
        return $this->belongsTo(TeamRegistration::class);
    }

    protected function inscripcion_equipo_visitante(){
        return $this->belongsTo(TeamRegistration::class);
    }

    protected function resultado(){
        return $this->hasOne(MatchResult::class);
    }
}