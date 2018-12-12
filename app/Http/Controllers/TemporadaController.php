<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Temporada;
use Illuminate\Support\Facades\DB;

class TemporadaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $temporadas = Temporada::where('estado',1)->get();
        return view('temporadas.index', compact('temporadas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('temporadas.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
//        |date_format:Y-n-j
        $validatedData = $request->validate([
            'numero_temporada' => 'required|string|min:6|max:20',
            'descripcion_temporada' => 'required|string|min:7|max:150',
            'fecha_inicio' => 'required|date',
            'fecha_fin' => 'required|date'
        ]);

        $temporada = NEW Temporada();
        $temporada->numero_temporada = $request->input('numero_temporada');
        $temporada->descripcion = $request->input('descripcion_temporada');
        $temporada->fecha_inicio = $request->input('fecha_inicio');
        $temporada->fecha_fin = $request->input('fecha_fin');
        $temporada->save();

        return redirect(route('temporadas.index'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id_temporada)
    {
        $temporadas = DB::table('temporada')
            ->where('id_temporada', '=', "$id_temporada")
            ->where('estado', '=', 1)
            ->first(['numero_temporada', 'descripcion', 'fecha_inicio', 'fecha_fin']);

        return view('temporadas.show', compact('temporadas'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id_temporada)
    {
        $temporada = DB::table('temporada')
            ->where('id_temporada', '=', "$id_temporada")
            ->where('estado', '=', 1)
            ->first(['id_temporada','numero_temporada', 'descripcion', 'fecha_inicio', 'fecha_fin']);

        return view('temporadas.edit', compact('temporada'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id_temporada)
    {

        $validatedData = $request->validate([
            'numero_temporada' => 'required|string|min:6|max:20',
            'descripcion_temporada' => 'required|string|min:7|max:150',
            'fecha_inicio' => 'required|date',
            'fecha_fin' => 'required|date'
        ]);

        DB::table('temporada')
            ->where('id_temporada', $id_temporada)
            ->update([
                'numero_temporada' => $request->input('numero_temporada'),
                'descripcion' => $request->input('descripcion_temporada'),
                'fecha_inicio' => $request->input('fecha_inicio'),
                'fecha_fin' => $request->input('fecha_fin'),
                'updated_at' => now()
            ]);

        return redirect(route('temporadas.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id_temporada)
    {
        DB::table('temporada')
            ->where('id_temporada', $id_temporada)
            ->update(['estado' => 0]);

        return redirect(route('temporadas.index'));
    }
}
