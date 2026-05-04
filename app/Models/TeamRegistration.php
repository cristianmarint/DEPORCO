<?php

namespace App\Models;

use App\User;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class TeamRegistration extends Model{

    use SoftDeletes;

    protected $table = "inscripcion_equipo";

    protected $fillable = [
        'equipo_id',
        'torneo_id',
        'puntos'
    ];

    public function enfrentamiento(){
        return $this->hasOne(GameMatch::class);
    }

    public function equipo(){
        return $this->belongsTo(Team::class);
    }

    public function torneo(){
        return $this->belongsTo(Tournament::class);
    }

    public function inscripcionjugador(){
        return $this->hasOne(PlayerRegistration::class);
    }
}