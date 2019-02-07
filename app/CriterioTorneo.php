<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class CriterioTorneo extends Model
{
    protected $table = "criterio_torneo";

    protected $fillable = [
        'criterio_id',
        'torneo_id'
    ];
}