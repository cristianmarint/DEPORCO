<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Tournament extends Model
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
        return $this->belongsTo(Category::class, 'categoria_id');
    }

    protected function temporada(){
        return $this->belongsTo(Season::class, 'temporada_id');
    }

    protected function calendario(){
        return $this->hasOne(Schedule::class, 'torneo_id');
    }

    protected function inscripcionequipo(){
        return $this->hasOne(TeamRegistration::class, 'torneo_id');
    }
}