<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Goal extends Model
{
    use SoftDeletes;
    
    protected $table = "anotacion";

    protected $fillable = [
      'anotacion',
      'minuto',
    ];

    public function TiempoEnfrentamiento()
    {
        return $this->belongsTo(MatchPeriod::class);
    }

    public function estadistica()
    {
        return $this->belongsTo(PlayerMatchStat::class);
    }
}