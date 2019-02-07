<?php


namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ArbitroPuesto extends Model
{
    protected $table = "arbitro_puesto";


    protected $fillable = [
        'puesto',
        'descripcion',
        'user_id'
    ];
}
