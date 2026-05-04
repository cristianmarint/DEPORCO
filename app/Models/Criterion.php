<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;


class Criterion extends Model{

    protected $table = "criterio";

    protected $fillable = [
        'descripcion'
    ];
}