<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Institution extends Model
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
        return $this->belongsTo(City::class);
    }

    public function tipo_educacion(){
        return $this->belongsTo(EducationType::class);
    }

    public function telefono(){
        return $this->belongsTo(Phone::class);
    }

    public function direccion(){
        return $this->belongsTo(Address::class);
    }

    public function instituto(){
        return $this->hasMany(Institution::class);
    }

}