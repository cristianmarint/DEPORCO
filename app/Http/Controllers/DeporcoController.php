<?php
/*
 * @Author: CristianMarinT 
 * @Date: 2019-05-10 10:40:57 
 * @Last Modified by: CristianMarinT
 * @Last Modified time: 2019-05-11 14:26:41
 */


namespace App\Http\Controllers;

use App\Models\Torneo;
use App\Models\DatosBasicos;
use App\Models\Instituto;
use App\Models\Equipo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class DeporcoController extends Controller{
    public function welcome()
    {
        $torneos = Torneo::count('id');
        $datosbasicos = DatosBasicos::count('id');
        $institutos = Instituto::count('id');
        $logos = Instituto::select('logo')->orderBy('id','desc')->limit(15)->get();
        $equipos = Equipo::count('id');
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