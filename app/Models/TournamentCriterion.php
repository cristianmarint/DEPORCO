<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class TournamentCriterion extends Model
{
    protected $table = "criterio_torneo";

    protected $fillable = [
        'criterio_id',
        'torneo_id'
    ];
}