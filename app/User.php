<?php
/*
 * @Author: CristianMarinT 
 * @Date: 2019-02-17 16:04:07 
 * @Last Modified by: CristianMarinT
 * @Last Modified time: 2019-02-23 14:04:32
 */

namespace App;

use App\Models\DatosBasicos;
use App\Models\Roles;
use App\Notifications\resetPasswordNotification;
use App\Notifications\sendEmailVerificationNotification;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

use Illuminate\Notifications\Notifiable;

use Illuminate\Contracts\Auth\MustVerifyEmail;

use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends \TCG\Voyager\Models\User implements MustVerifyEmail
{
    use SoftDeletes;
    
    use Notifiable;

    protected $table = "users";

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
        
        // permite que se pueden personalizar el perfil desde voyager
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

    /**
     * Send the password reset notification.
     *
     * @param  string  $token
     * @return void
     */
    public function sendPasswordResetNotification($token)
    {
        if($this->datos_basicos_id){
            $this->notify(new resetPasswordNotification($token,$this->datos_basicos->primer_nombre));
        }else {
            $this->notify(new resetPasswordNotification($token,$this->name));
        }
    }

    /**
     * Send the email verification notification.
     *
     * @return void
     */
    public function ssendEmailVerificationNotification($token)
    {
        // $this->notify(new ssendEmailVerificationNotification);
        
        if($this->datos_basicos_id){
            $this->notify(new ssendEmailVerificationNotification($token,$this->datos_basicos->primer_nombre));
        }else {
            $this->notify(new ssendEmailVerificationNotification($token,$this->name));
        }
    }
}
