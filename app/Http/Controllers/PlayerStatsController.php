<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PlayerStatsController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth']);
    }

    /**
     * Listado de jugadores con totales agregados de anotaciones,
     * tarjetas (faltas) y partidos jugados.
     */
    public function index()
    {
        $jugadores = DB::table('jugador as j')
            ->join('datos_basicos as db', 'db.id', '=', 'j.datos_basicos_id')
            ->leftJoin('inscripcion_jugador as ij', 'ij.jugador_id', '=', 'j.id')
            ->leftJoin('estadistica as e', 'e.inscripcion_jugador_id', '=', 'ij.id')
            ->leftJoin('anotacion as a', function ($join) {
                $join->on('a.estadistica_id', '=', 'e.id')
                     ->whereNull('a.deleted_at');
            })
            ->leftJoin('falta as f', function ($join) {
                $join->on('f.estadistica_id', '=', 'e.id')
                     ->whereNull('f.deleted_at');
            })
            ->whereNull('j.deleted_at')
            ->select(
                'j.id',
                DB::raw("CONCAT_WS(' ', NULLIF(db.primer_nombre,''), NULLIF(db.primer_apellido,''), NULLIF(db.segundo_apellido,'')) as nombre"),
                'db.cedula',
                DB::raw('COUNT(DISTINCT e.enfrentamiento_id) as partidos'),
                DB::raw('COALESCE(SUM(a.anotacion),0) as anotaciones'),
                DB::raw('COUNT(DISTINCT f.id) as faltas')
            )
            ->groupBy('j.id', 'db.primer_nombre', 'db.primer_apellido', 'db.segundo_apellido', 'db.cedula')
            ->orderBy('anotaciones', 'desc')
            ->orderBy('nombre', 'asc')
            ->get();

        return view('estadisticasjugador.index', compact('jugadores'));
    }

    /**
     * Devuelve el detalle de estadísticas de un jugador en formato JSON.
     */
    public function getJugador($id)
    {
        $id = (int) $id;

        $jugador = DB::table('jugador as j')
            ->join('datos_basicos as db', 'db.id', '=', 'j.datos_basicos_id')
            ->where('j.id', $id)
            ->whereNull('j.deleted_at')
            ->select(
                'j.id',
                DB::raw("CONCAT_WS(' ', NULLIF(db.primer_nombre,''), NULLIF(db.primer_apellido,''), NULLIF(db.segundo_apellido,'')) as nombre"),
                'db.cedula',
                'db.fecha_nacimiento'
            )
            ->first();

        if (!$jugador) {
            return response()->json(['error' => 'Jugador no encontrado'], 404);
        }

        $resumen = DB::table('inscripcion_jugador as ij')
            ->leftJoin('estadistica as e', 'e.inscripcion_jugador_id', '=', 'ij.id')
            ->leftJoin('anotacion as a', function ($join) {
                $join->on('a.estadistica_id', '=', 'e.id')
                     ->whereNull('a.deleted_at');
            })
            ->leftJoin('falta as f', function ($join) {
                $join->on('f.estadistica_id', '=', 'e.id')
                     ->whereNull('f.deleted_at');
            })
            ->where('ij.jugador_id', $id)
            ->whereNull('ij.deleted_at')
            ->select(
                DB::raw('COUNT(DISTINCT e.enfrentamiento_id) as partidos'),
                DB::raw('COALESCE(SUM(a.anotacion),0) as anotaciones'),
                DB::raw('COUNT(DISTINCT f.id) as faltas')
            )
            ->first();

        $porTorneo = DB::table('inscripcion_jugador as ij')
            ->join('inscripcion_equipo as ie', 'ie.id', '=', 'ij.inscripcion_equipo_id')
            ->join('torneo as t', 't.id', '=', 'ie.torneo_id')
            ->leftJoin('estadistica as e', 'e.inscripcion_jugador_id', '=', 'ij.id')
            ->leftJoin('anotacion as a', function ($join) {
                $join->on('a.estadistica_id', '=', 'e.id')
                     ->whereNull('a.deleted_at');
            })
            ->leftJoin('falta as f', function ($join) {
                $join->on('f.estadistica_id', '=', 'e.id')
                     ->whereNull('f.deleted_at');
            })
            ->where('ij.jugador_id', $id)
            ->whereNull('ij.deleted_at')
            ->select(
                't.id as torneo_id',
                't.nombre as torneo',
                DB::raw('COUNT(DISTINCT e.enfrentamiento_id) as partidos'),
                DB::raw('COALESCE(SUM(a.anotacion),0) as anotaciones'),
                DB::raw('COUNT(DISTINCT f.id) as faltas')
            )
            ->groupBy('t.id', 't.nombre')
            ->orderBy('t.nombre', 'asc')
            ->get();

        return response()->json([
            'jugador'   => $jugador,
            'resumen'   => $resumen,
            'torneos'   => $porTorneo,
        ]);
    }

    public function show($id)
    {
        return $this->getJugador($id);
    }
}
