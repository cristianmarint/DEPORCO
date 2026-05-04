<?php
/*
 * @Author: CristianMarinT 
 * @Date: 2019-05-10 10:40:57 
 * @Last Modified by: CristianMarinT
 * @Last Modified time: 2019-05-11 14:26:41
 */


namespace App\Http\Controllers;

use App\Models\Tournament;
use App\Models\Profile;
use App\Models\Institution;
use App\Models\Team;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class DeporcoController extends Controller{
    public function welcome()
    {
        $torneos = Tournament::count('id');
        $datosbasicos = Profile::count('id');
        $institutos = Institution::count('id');
        $logos = Institution::select('logo')->orderBy('id','desc')->limit(15)->get();
        $equipos = Team::count('id');
        return view('welcome',compact('torneos','datosbasicos','institutos','equipos','logos'));
    }

    public function about()
    {
        return view('deporco.about');
    }

    public function contact()
    {
        return view('deporco.contact');
    }

    public function media()
    {
        return view('deporco.media');
    }

    public function terms()
    {
        return view('deporco.terms');
    }
}