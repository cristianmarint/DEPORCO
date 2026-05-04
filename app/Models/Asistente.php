<?php


namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Asistente extends Model
{
    use SoftDeletes;

    protected $table = "asistente";

    protected $fillable = [
        'puesto',
    ];

    public function asistenteInscripcionEquipo()
    {
        return $this->hasOne(AsistenteInscripcionEquipo::class);
    }

    public function asistenteLicencia()
    {
        return $this->hasMany(AsistenteLicencia::class);
    }
}
