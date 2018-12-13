<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Telefono extends Model{
    protected $table = "telefono";

    protected $fillable = [
        'telefono','tipo'
    ];

}
