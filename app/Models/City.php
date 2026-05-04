<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    protected $table = "municipio";

    protected $fillable = [
        'nombre'
    ];

    protected function departamento(){
        return $this->belongsTo(State::class);
    }

    protected function instituto(){
        return $this->hasMany(Institution::class);
    }

    protected function lugar(){
        return $this->hasMany(Venue::class);
    }

    protected function datosbasicos(){
        return $this->hasMany(Profile::class);
    }
}