<?php

namespace App\Http\Controllers;

use App\DatosBasicos;

use App\Telefono;
use App\TipoSangre;
use App\Municipio;
use App\Departamento;
use App\Genero;
use App\Direccion;
use App\Eps;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class DatosBasicosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datosbasicos = DatosBasicos::all();
        return view('datosbasicos.index',compact('datosbasicos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $departamentos = Departamento::orderBy('nombre', 'asc')->get();
        $tiposangres = TipoSangre::orderBy('tipo', 'asc')->get();
        $generos = Genero::orderBy('id', 'asc')->get();
        $epss = Eps::orderBy('nombre', 'asc')->get();

        return view('datosbasicos.create', compact('departamentos','tiposangres','generos','epss'));
    }

    /**
     * Display the specified resource .
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response json
     */
    public function getDatosBasicos($id){
        $datosbasicos = DatosBasicos::where('id',$id)
            ->orderBy('nombre', 'asc')
            ->get();
        return response()->json($datosbasicos);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $datosbasicos = DatosBasicos::findOrFail($id);
        return view('datosbasicos.show', compact('datosbasicos'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DatosBasicos::find($id)->delete();
        return redirect(route('datosbasicos.index'));
    }
}
