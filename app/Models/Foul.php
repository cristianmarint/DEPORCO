<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Foul extends Model
{
    protected $table = "falta";

    protected $fillable = [
        'total'
    ];
}