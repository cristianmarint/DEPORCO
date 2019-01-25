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
        'tipo_sangre_id',
        'municipio_id',
        'genero_id',
        'direccion_id',
        'eps_id',
       'email'
    ];

    protected function user(){
        return $this->hasOne(User::class);
    }
}