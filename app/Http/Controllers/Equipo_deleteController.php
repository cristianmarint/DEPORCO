<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Equipo_deleteController extends Controller
{
    public function index()
    {
        $equipos = DB::table('equipos')
            ->join('institutos as a', 'equipos.id_instituto', '=', 'a.id_instituto')
            ->where('equipos.estado','=', 0)
            ->get(['id_equipo', 'nombre_equipo', 'nombre_institucion', 'equipos.logo']);

        return view('equipos.index', compact('equipos'));
    }
}
