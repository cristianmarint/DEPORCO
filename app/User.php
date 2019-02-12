<?php

namespace App;

use App\Models\DatosBasicos;
use App\Models\Roles;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends \TCG\Voyager\Models\User
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'role_id', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    protected function datos_basicos(){
        return $this->belongsTo(DatosBasicos::class);
    }

    protected function rol(){
        return $this->belongsTo(Roles::class);
    }

}
