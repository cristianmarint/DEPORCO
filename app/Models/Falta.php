<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Falta extends Model
{
    protected $table = "falta";

    protected $fillable = [
        'total'
    ];
}