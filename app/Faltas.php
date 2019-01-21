<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class Faltas extends Model
{
    protected $table = "faltas";

    protected $fillable = [
        'total'
    ];
}