<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    protected $table = 'direccion';

    protected $fillable = [
      'calle',
      'carrera',
      'numero'
    ];

    protected function instituto(){
        return $this->hasOne(Institution::class, 'direccion_id');
    }
    protected function datosbasicos(){
        return $this->hasOne(Datosbasicos::class, 'direccion_id');
    }

    protected function lugar(){
        return $this->hasOne(Venue::class, 'direccion_id');
    }
}