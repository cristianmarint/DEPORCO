<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class TipoSangre extends Model
{
    use SoftDeletes;

    protected $table = "tipo_sangre";

    protected $fillable = [
        'tipo'
    ];

    protected function datosbasicos(){
        return $this->hasMany(DatosBasicos::class);
    }
}