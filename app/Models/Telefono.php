<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Telefono extends Model
{
    use SoftDeletes;

    protected $table = "telefono";

    protected $fillable = [
        'numero',
        'tipo'
    ];

    protected function instituto(){
        return $this->hasOne(Instituto::class);
    }
    protected function lugar(){
        return $this->hasOne(Lugar::class);
    }
    protected function datosbasicos(){
        return $this->hasOne(DatosBasicos::class);
    }

}
