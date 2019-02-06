<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Telefono extends Model{
    protected $table = "telefono";

    protected $fillable = [
        'numero',
        'tipo'
    ];

    protected function instituto(){
        return $this->hasOne(Instituto::class);
    }

}
