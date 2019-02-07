<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Departamento extends Model
{
    protected $table = "departamento";

    protected $fillable = [
      'nombre'
    ];

    protected function municipios(){
        return $this->hasMany(Municipio::class);
    }
}