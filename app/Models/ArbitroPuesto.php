<?php


namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ArbitroPuesto extends Model
{
    use SoftDeletes;

    protected $table = "arbitro_puesto";

    protected $fillable = [
        'nombre',
        'descripcion',
    ];

    public function EnfrentamientoArbitro()
    {
        return $this->hasOne('EnfrentamientoArbitro');
    }
}
