<?php
/*
 * @Author: CristianMarinT 
 * @Date: 2019-05-10 10:40:57 
 * @Last Modified by: CristianMarinT
 * @Last Modified time: 2019-05-10 13:42:49
 */


namespace App\Http\Controllers;

use App\Models\Calendario;
use App\Models\Fase;
use App\Models\Torneo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class DeporcoController extends Controller{
    public function welcome()
    {
        return view('welcome');
    }

    public function about()
    {
        return view('deporco.about');
    }

    public function contact()
    {
        return view('deporco.contact');
    }



    public function terms()
    {
        return view('deporco.terms');
    }
}