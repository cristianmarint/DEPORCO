<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Anotacion extends Model
{
    use SoftDeletes;
    
    protected $table = "anotacion";

    protected $fillable = [
      'anotacion',
      'minuto',
    ];

    public function TiempoEnfrentamiento()
    {
        return $this->belongsTo('TiempoEnfrentamiento');
    }

    public function estadistica()
    {
        return $this->belongsTo('estadistica');
    }
}