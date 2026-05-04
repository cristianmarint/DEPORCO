<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Phone extends Model
{
    use SoftDeletes;

    protected $table = "telefono";

    protected $fillable = [
        'numero',
        'tipo'
    ];

    protected function instituto(){
        return $this->hasOne(Institution::class);
    }
    protected function lugar(){
        return $this->hasOne(Venue::class);
    }
    protected function datosbasicos(){
        return $this->hasOne(Profile::class);
    }
    protected function telefono(){
        return $this->hasOne(Phone::class);
    }

}
