<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class InscripcionEquipos_deleteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $inscripciones = DB::table('inscripcion')
            ->join('equipos as a','inscripcion.equipo_id', '=', 'a.id_equipo')
            ->join('torneo as b','inscripcion.torneo_id', '=', 'b.id_torneo')
            ->join('temporada as c', 'b.id_temporada', '=', 'c.id_temporada')
            ->where('inscripcion.estado', '=', 0)
//            ->where('a.estado', '=', 0)
//            ->where('b.estado', '=', 0)
            ->get(['id_inscripcion','nombre_torneo', 'nombre_equipo', 'numero_temporada']);

        return view('inscripciones_equipo.index', compact('inscripciones'));
    }
}
