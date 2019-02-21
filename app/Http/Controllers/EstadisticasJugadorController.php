<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class EstadisticasJugadorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('estadisticasjugador.index');
    }

    /**
     * Display the specified resource .
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response json
     */
    public function getJugador($id){
        // $categorias = Categoria::where('id',$id)
        //     ->orderBy('descripcion', 'asc')
        //     ->get();
        // return response()->json($categorias);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // $categorias = Categoria::findOrFail($id);
        // return view('categoria.show', compact('categorias'));
    }
}
