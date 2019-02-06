<?php

namespace App;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Torneo extends Model
{
    use SoftDeletes;

    protected $table = "torneo";

    protected $fillable = [
        'nombre',
        'categoria_id',
        'temporada_id',
    ];

    protected function user(){
        return $this->belongsTo(User::class);
    }
  
    protected function categoria(){
        return $this->belongsTo(Categoria::class);
    }

    protected function temporada(){
        return $this->belongsTo(Temporada::class);
    }
}