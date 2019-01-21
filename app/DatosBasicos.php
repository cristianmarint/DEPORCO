<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class DatosBasicos extends Model
{
    protected $table = "datos_basicos";

    protected $fillable = [
      'cedula',
      'primer_nombre',
      'segundo_nombre',
      'primer_apellido',
      'segundo_apellido',
       'email'
    ];
}