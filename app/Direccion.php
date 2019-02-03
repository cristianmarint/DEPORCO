<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class Direccion extends Model
{
    protected $table = 'direccion';

    protected $fillable = [
      'calle',
      'carrera',
      'numero'
    ];

    protected function instituto(){
        return $this->hasOne(Instituto::class);
    }
    protected function datosbasicos(){
        return $this->hasOne(Datosbasicos::class);
    }
}