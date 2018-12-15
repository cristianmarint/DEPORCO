<?php

namespace App;
use Illuminate\Database\Eloquent\Model;


class Criterio extends Model{
    protected $table = "criterio";

    protected $fillable = ['id_criterio', 'criterio'];
}