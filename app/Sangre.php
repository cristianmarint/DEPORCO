<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Sangre extends Model{
    protected $table = "sangre";

    protected $fillable = [
        'id_sangre',
        'tipo'
    ];

}
