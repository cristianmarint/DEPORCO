<?php

namespace App\Models;

use App\User;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class InscripcionEquipo extends Model{

    use SoftDeletes;

    protected $table = "inscripcion_equipo";

    protected $fillable = [
        'equipo_id',
        'puntos'
    ];

    public function enfrentamiento(){
        return $this->hasOne(Enfrentamiento::class);
    }

    public function equipo(){
        return $this->belongsTo(Equipo::class);
    }
}