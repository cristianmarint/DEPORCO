<?php

namespace App\Http\Controllers;

use App\InscripcionEquipo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Equipo;
use App\Torneo;

class InscripcionEquiposController extends Controller
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

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $torneos = DB::table('torneo')
            ->join('temporada as a', 'torneo.id_temporada', '=', 'a.id_temporada')
            ->join('categoria as b', 'torneo.id_categoria', '=', 'b.id_categoria')
            ->where('torneo.estado', '=',1)
            ->where('a.estado', '=',1)
            ->where('b.estado', '=',1)
            ->get(['id_torneo', 'nombre_torneo', 'numero_temporada', 'categoria']);
        return view('inscripciones_equipo.create', compact('torneos'));
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */


//listar los equipos que no estan inscriptos en ese torneo
    public function getEquipo($id_torneo){

//        $equipos = DB::table('equipos')
//            ->join('institutos as x', 'equipos.id_instituto', '=', 'x.id_instituto')
//            ->join('inscripcion as a', 'equipos.id_equipo', '<>', 'a.id_equipo')
//            ->join('torneo as b', 'a.id_torneo', '=', 'b.id_torneo')
//            ->where('a.estado', '=', 1)
//            ->where('equipos.estado','=', 1)
//            ->where('x.estado','=', 1)
//            ->where('b.id_torneo', '=', $id_torneo)
//            ->select('equipos.id_equipo', 'nombre_equipo')
//            ->orderBy('nombre_equipo', 'asc')
//            ->get();
//
//
//        if(count($equipos) <= 0){
//            $equipos = DB::table('equipos')
//                ->select('equipos.id_equipo', 'nombre_equipo', 'nombre_institucion')
//                ->join('institutos as x', 'equipos.id_instituto', '=', 'x.id_instituto')
//                ->where('equipos.estado','=', 1)
//                ->where('x.estado','=', 1)
//                ->get();
//            return response()->json($equipos);
//        }else{
//            return response()->json($equipos);
//        }

        $equiposInscr = DB::table('inscripcion')
            ->join('torneo as a', 'inscripcion.id_torneo', '=', 'a.id_torneo')
            ->where('inscripcion.estado', '=', 1)
            ->where('a.estado', '=', 1)
            ->where('a.id_torneo', '=', $id_torneo)
            ->select('id_equipo')
            ->get();

        $equipos = DB::table('equipos')
            ->join('institutos as x', 'equipos.id_instituto', '=', 'x.id_instituto')
            ->where('equipos.estado','=', 1)
            ->where('x.estado','=', 1)
            ->select('equipos.id_equipo', 'nombre_equipo', 'nombre_institucion')
            ->get();

//        return response()->json($equipos);

        if(count($equiposInscr) <= 0){
            return response()->json($equipos);
        }else{
            $i = 0;
            foreach ($equipos as $equipo){
                foreach ($equiposInscr as $inscripcion){
                    if ($equipo->id_equipo !== $inscripcion->id_equipo){

                      $equiposDisponibles[] = array(
                        'id_equipo' => $equipo->id_equipo,
                        'nombre_equipo' => $equipo->nombre_equipo,
                        'nombre_institucion' => $equipo->nombre_institucion
                      );

                      $i++;
                    }
                }
            }
            return response()->json($equiposDisponibles);
        }

    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'torneo' => 'required|integer|not_in:0|exists:torneo,id_torneo',
            'equipo' => 'required|integer|not_in:0|exists:equipos,id_equipo'
        ]);

        $inscripcion = NEW InscripcionEquipo();
        $inscripcion->id_equipo = $request->input('equipo');
        $inscripcion->id_torneo = $request->input('torneo');
        $inscripcion->save();

        return redirect(route('inscripciones_equipo.index'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id_inscripcion)
    {
        $inscripcion = DB::table('inscripcion')
            ->join('equipos as a', 'inscripcion.id_equipo', '=', 'a.id_equipo')
            ->join('torneo as b', 'inscripcion.id_torneo', '=', 'b.id_torneo')
            ->where('inscripcion.estado', '=', 1)
            ->where('a.estado', '=', 1)
            ->where('b.estado', '=', 1)
            ->where('id_inscripcion', '=',  $id_inscripcion)
            ->first(['nombre_equipo', 'nombre_torneo']);

        return view('inscripciones_equipo.show', compact('inscripcion'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id_inscripcion)
    {
        $inscripcion = DB::table('inscripcion')
            ->where('estado', '=', 1)
            ->where('id_inscripcion', '=', $id_inscripcion)
            ->first(['id_inscripcion', 'id_equipo', 'id_torneo']);

        $torneos = DB::table('torneo')
            ->join('temporada as a', 'torneo.id_temporada', '=', 'a.id_temporada')
            ->join('categoria as b', 'torneo.id_categoria', '=', 'b.id_categoria')
            ->where('torneo.estado', '=',1)
            ->where('a.estado', '=',1)
            ->where('b.estado', '=',1)
            ->get(['id_torneo', 'nombre_torneo', 'numero_temporada', 'categoria']);

        return view('inscripciones_equipo.edit', compact( 'torneos', 'inscripcion'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id_inscripcion)
    {
        $validatedData = $request->validate([
            'torneo' => 'required|integer|not_in:0|exists:torneo,id_torneo',
            'equipo' => 'required|integer|not_in:0|exists:equipos,id_equipo'
        ]);


        DB::table('inscripcion')
            ->where('id_inscripcion', $id_inscripcion)
            ->update([
                'id_equipo' => $request->input('equipo'),
                'id_torneo' => $request->input('torneo'),
                'updated_at' => now()
            ]);

        return redirect(route('inscripciones_equipo.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id_inscripcion)
    {
        DB::table('inscripcion')
            ->where('id_inscripcion', $id_inscripcion)
            ->update(['estado' => 0]);

        return redirect(route('inscripciones_equipo.index'));
    }
}
