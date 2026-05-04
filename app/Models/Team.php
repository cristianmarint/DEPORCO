<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Team extends model
{
    use SoftDeletes;

    protected $table = "equipo";

    protected $fillable = [
      'nombre',
      'logo',
      'instituto_id',
      'color_id',
      'user_id'
    ];

    protected function user(){
      return $this->belongsTo(User::class);
    }

    protected function instituto(){
      return $this->belongsTo(Institution::class, 'instituto_id');
    }

    public function color(){
      return $this->belongsTo(Color::class, 'color_id');
    }

    public function inscripcionequipo(){
      return $this->hasOne(TeamRegistration::class, 'equipo_id');
    }

    public function inscripcionjugador(){
      return $this->hasOne(PlayerRegistration::class, 'equipo_id');
    }
}
