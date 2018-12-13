<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Eps extends Model{
    protected $table = "eps";

    protected $fillable = [
        'nit',
        'nombre',
        'administradora',
        'tipo',
        'codigo'
    ];

}
