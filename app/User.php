<?php
/*
 * @Author: CristianMarinT 
 * @Date: 2019-02-17 16:04:07 
 * @Last Modified by: CristianMarinT
 * @Last Modified time: 2019-02-17 16:11:14
 */

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
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [ 
        'email_verified_at' => 'datetime', 
        
        // permite que se pueden personalizar el perfil 
        // desde voyager
        'settings' => 'json' 
    ];

    public function datos_basicos(){
        return $this->belongsTo(DatosBasicos::class);
    }

    public function roles(){
        return $this->belongsTo(Roles::class);
    }

    public function socialAccounts()
    {
        return $this->hasMany(SocialAccount::class);
    }
}
