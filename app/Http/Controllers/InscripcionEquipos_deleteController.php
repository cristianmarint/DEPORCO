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
            ->join('equipos as a','inscripcion.id_equipo', '=', 'a.id_equipo')
            ->join('torneo as b','inscripcion.id_torneo', '=', 'b.id_torneo')
            ->join('temporada as c', 'b.id_temporada', '=', 'c.id_temporada')
            ->where('inscripcion.estado', '=', 1)
            ->where('a.estado', '=', 1)
            ->where('b.estado', '=', 1)
            ->get(['id_inscripcion','nombre_torneo', 'nombre_equipo', 'numero_temporada']);

        return view('inscripciones_equipo.index', compact('inscripciones'));
    }
}
