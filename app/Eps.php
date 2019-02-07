<?php

namespace App;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Eps extends Model
{
    use SoftDeletes;

    protected $table = "eps";

    protected $fillable = [
      'nombre',
      'administradora',
      'tipo',
      'codigo'
    ];

    protected function datosbasicos(){
      return $this->hasMany(DatosBasicos::class);
  }
}