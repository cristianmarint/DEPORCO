<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class TipoEducacion extends Model
{
    protected $table = "tipo_educacion";

    protected $fillable = [
      'tipo '
    ];

//    protected function instituto(){
//        return $this->hasMany(Instituto::class);
//    }
}