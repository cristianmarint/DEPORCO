<?php

namespace App;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Genero extends Model
{
    use SoftDeletes;

    protected $table = "genero";

    protected $fillable = [
      'genero'
    ];

    protected function datosbasicos(){
      return $this->hasMany(DatosBasicos::class);
  }
}