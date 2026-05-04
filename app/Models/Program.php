<?php


namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Program extends Model
{
    protected $table = "programa";


    protected $fillable = [
        'programa',
        'descripcion'
    ];
}
