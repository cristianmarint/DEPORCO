<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Torneo extends Model{

    protected $table = "torneo";

    protected $fillable = [
        'nombre',
    ];
}