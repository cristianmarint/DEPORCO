<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;


class Criterio extends Model{

    protected $table = "criterio";

    protected $fillable = [
        'descripcion'
    ];
}