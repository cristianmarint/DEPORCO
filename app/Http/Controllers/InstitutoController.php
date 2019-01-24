<?php

namespace App\Http\Controllers;

use App\Departamento;
use App\Instituto;
use App\Municipio;
use Illuminate\Http\Request;

class InstitutoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $institutos = Instituto::where('deleted_at', null)->get();
        return view('instituto.index', compact('institutos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $departamentos = Departamento::orderBy('nombre', 'asc')->get();
        return view('instituto.create', compact('departamentos'));
    }

    /**
     * Display the specified resource .
     *
     * @param  int  $id_departamento
     * @return \Illuminate\Http\Response json
     */
    public function getMunicipio($id){
        $municipios = Municipio::where('departamento_id',$id)
            ->orderBy('nombre', 'asc')
            ->get();
        return response()->json($municipios);
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
            'nit' => 'required|min:5|max:20|unique:institutos,nit',
            'codigo_dane' => 'required|min:5|max:20|unique:institutos,codigo_dane',
            'nombre' => 'required|min:7|max:150',
            'logo'   => 'image',
            'departamento_id' => 'required|integer|not_in:0|exists:departamento,id',
            'municipio' => 'required|integer|not_in:0|exists:municipio,id',
            'tipo_educacion' => 'required|integer|not_in:0|exists:tipo_educacion,id',
            'calle' => 'required|string|min:3|max:50',
            'carrera' => 'required|string|min:3|max:10',
            'numero' => 'required|string|min:3|max:5',
            'telefono' => 'required|integer'
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $instituto = Instituto::findOrFail($id);
        return view('instituto.show', compact('instituto'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('instituto.edit');
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
        //
    }
}
