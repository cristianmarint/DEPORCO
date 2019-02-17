<?php
/*
 * @Author: CristianMarinT 
 * @Date: 2019-02-17 16:09:33 
 * @Last Modified by: CristianMarinT
 * @Last Modified time: 2019-02-17 16:18:44
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
// use Illuminate\Database\Eloquent\SoftDeletes;

class Roles extends Model
{
    // use SoftDeletes;

    protected $table = "roles";

    protected $fillable = [
      'name',
      'display_name'
    ];

    protected function user(){
      return $this->hasOne(User::class);
  }
}