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
      'logo',
       'municipio_id',
        'tipo_educacion_id',
        'telefono_id',
        'direccion_id',
        'user_id'
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

    public function telefono(){
        return $this->belongsTo(Telefono::class);
    }

    public function direccion(){
        return $this->belongsTo(Direccion::class);
    }

    protected function instituto(){
        return $this->hasMany(Instituto::class);
    }

}