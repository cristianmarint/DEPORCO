<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class EducationType extends Model
{
    protected $table = "tipo_educacion";

    protected $fillable = [
      'tipo '
    ];

//    protected function instituto(){
//        return $this->hasMany(Institution::class, 'tipo_educacion_id');
//    }
}