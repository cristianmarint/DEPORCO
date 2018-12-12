<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Torneo;
use App\Temporada;
use App\Categoria;
use Illuminate\Support\Facades\DB;

class TorneoController extends Controller
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
            ->where('a.estado', '=', 1)
            ->where('b.estado', '=', 1)
            ->where('torneo.estado', '=', 1)
            ->get(['id_torneo', 'nombre_torneo', 'categoria', 'numero_temporada']);

        return view('torneos.index', compact('torneos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categorias = Categoria::where('estado',1)->get();
        $temporadas = Temporada::where('estado',1)->get();
        return view('torneos.create', compact('categorias', 'temporadas'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'nombre_torneo' => 'required|string|min:7|max:150',
            'categoria' => 'required|integer|not_in:0|exists:categoria,id_categoria',
            'temporada' => 'required|integer|not_in:0|exists:temporada,id_temporada'
        ]);

        $torneo = NEW Torneo();
        $torneo->nombre_torneo = $request->input('nombre_torneo');
        $torneo->id_categoria = $request->input('categoria');
        $torneo->id_temporada = $request->input('temporada');
        $torneo->save();

        return redirect(route('torneos.index'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id_torneo)
    {
        $torneo = DB::table('torneo')
            ->join('categoria as a', 'torneo.id_categoria', '=', 'a.id_categoria')
            ->join('temporada as b', 'torneo.id_temporada', '=', 'b.id_temporada')
            ->where('a.estado', '=', 1)
            ->where('b.estado', '=', 1)
            ->where('torneo.estado', '=', 1)
            ->where('id_torneo', '=', "$id_torneo")
            ->first(['nombre_torneo', 'categoria', 'numero_temporada']);

        return view('torneos.show', compact('torneo'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id_torneo)
    {
        $torneo = DB::table('torneo')
            ->join('categoria as a', 'torneo.id_categoria', '=', 'a.id_categoria')
            ->join('temporada as b', 'torneo.id_temporada', '=', 'b.id_temporada')
            ->where('a.estado', '=', 1)
            ->where('b.estado', '=', 1)
            ->where('torneo.estado', '=', 1)
            ->where('id_torneo', '=', "$id_torneo")
            ->first(['id_torneo','nombre_torneo', 'a.id_categoria','categoria', 'b.id_temporada', 'numero_temporada']);

        $categorias = Categoria::where('estado',1)->get();
        $temporadas = Temporada::where('estado',1)->get();
        return view('torneos.edit', compact('torneo', 'categorias', 'temporadas'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id_torneo)
    {
        $validatedData = $request->validate([
            'nombre_torneo' => 'required|string|min:7|max:150',
            'categoria' => 'required|integer|not_in:0|exists:categoria,id_categoria',
            'temporada' => 'required|integer|not_in:0|exists:temporada,id_temporada'
        ]);

        DB::table('torneo')
            ->where('id_torneo', $id_torneo)
            ->update([
                'nombre_torneo' => $request->input('nombre_torneo'),
                'id_categoria' => $request->input('categoria'),
                'id_temporada' => $request->input('temporada'),
                'updated_at' => now()
            ]);

        return redirect(route('torneos.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id_torneo)
    {
        DB::table('torneo')
            ->where('id_torneo', $id_torneo)
            ->update(['estado' => 0]);

        return redirect(route('torneos.index'));
    }
}
