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
        return $this->hasOne(Institution::class);
    }
    protected function datosbasicos(){
        return $this->hasOne(Datosbasicos::class);
    }

    protected function lugar(){
        return $this->hasOne(Venue::class);
    }
}