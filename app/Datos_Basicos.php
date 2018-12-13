<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Datos_Basicos extends Model{

    protected $table = "Datos_basicos";

    protected $fillable = [
        'cedula',
        'telefono_id',
        'primer_nombre',
        'segundo_nombre',
        'primer_apellido',
        'segundo_apellido',
        'sangre_id',
        'municipio_id',
        'sexo_id',
        'direccion_id',
        'eps_id',
        'email',
    ];
}