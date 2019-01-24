<?php

namespace App;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Instituto extends Model
{

    use SoftDeletes;

    protected $table = "instituto";

    protected $fillable = [
      'codigo_dane',
      'nit',
      'nombre',
      'logo'
    ];

    protected function user(){
        return $this->belongsTo(User::class);
    }

    protected function municipio(){
        return $this->belongsTo(Municipio::class);
    }

    protected function tipo_educacion(){
        return $this->belongsTo(TipoEducacion::class);
    }

    protected function telefono(){
        return $this->belongsTo(Telefono::class);
    }

    protected function direccion(){
        return $this->belongsTo(Direccion::class);
    }


}