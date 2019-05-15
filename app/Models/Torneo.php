<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Torneo extends Model
{
    use SoftDeletes;

    protected $table = "torneo";

    protected $fillable = [
        'nombre',
        'categoria_id',
        'temporada_id',
    ];

    protected function user(){
        return $this->belongsTo(User::class);
    }
  
    protected function categoria(){
        return $this->belongsTo(Categoria::class);
    }

    protected function temporada(){
        return $this->belongsTo(Temporada::class);
    }

    protected function calendario(){
        return $this->hasOne(Calendario::class);
    }

    protected function inscripcionequipo(){
        return $this->hasOne(InscripcionEquipo::class);
    }
}