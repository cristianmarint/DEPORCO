<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Torneo_deleteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $torneos = DB::table('torneo')
            ->join('categoria as a', 'torneo.id_categoria', '=', 'a.id_categoria')
            ->join('temporada as b', 'torneo.id_temporada', '=', 'b.id_temporada')
            ->where('a.estado', '=', 0)
            ->where('b.estado', '=', 0)
            ->where('torneo.estado', '=', 0)
            ->get(['id_torneo', 'nombre_torneo', 'categoria', 'numero_temporada']);

        return view('torneos.index', compact('torneos'));
    }
}
