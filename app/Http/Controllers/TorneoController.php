<?php

namespace App\Http\Controllers;

use App\Torneo;

use App\Categoria;
use App\Temporada;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
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
        $torneos = Torneo::all();
        return view('torneo.index',compact('torneos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categorias = Categoria::orderBy('descripcion', 'asc')->get();
        $temporadas = Temporada::orderBy('descripcion', 'asc')->get();
        return view('torneo.create',compact('categorias','temporadas'));
    }

    /**
     * Display the specified resource .
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response json
     */
    public function getTorneo($id){
        $torneos = Torneo::where('id',$id)
            ->orderBy('descripcion', 'asc')
            ->get();
        return response()->json($torneos);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            'nombre'    => 'required|min:3|max:60',
            'categoria' => 'required|integer|not_in:0|exists:categoria,id',
            'temporada' => 'required|integer|not_in:0|exists:temporada,id',
        ]);

        DB::beginTransaction();
        try{
            $torneo = NEW Torneo();
            $torneo->nombre = $request->input('nombre');
            $torneo->categoria_id = $request->input('categoria');
            $torneo->temporada_id = $request->input('temporada');
            $torneo->user_id = Auth::user()->id;
            $torneo->save();
            $success = true;
        } catch (\exception $e){
            $success = false;
            $error_save = $e->getMessage();
            DB::rollback();
        }
        if ($success){
            DB::commit();
            session()->flash('create', $torneo->nombre);
            return redirect(route('torneos.index'))->with('success');
        }else{
            session()->flash('error', 'error');
            return redirect()->back()->withInput();
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $torneos = Torneo::findOrFail($id);
        return view('torneo.show', compact('torneos'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $torneo = Torneo::findOrFail($id);
        $categorias = Categoria::orderBy('descripcion', 'asc')->get();
        $temporadas = Temporada::orderBy('descripcion', 'asc')->get();

        return view('torneo.edit', compact('torneo','categorias','temporadas'));
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
        $torneo = Torneo::findOrFail($id);
        $data = $request->validate([
            'nombre'    => 'required|min:3|max:60',
            'categoria' => 'required|integer|not_in:0|exists:categoria,id',
            'temporada' => 'required|integer|not_in:0|exists:temporada,id',
        ]);

        DB::beginTransaction();
        try{
            $torneo->nombre = $request->input('nombre');
            $torneo->categoria_id = $request->input('categoria');
            $torneo->temporada_id = $request->input('temporada');
            $torneo->save();
            $success = true;
        } catch (\exception $e){
            $success = false;
            $error = $e->getMessage();
            DB::rollback();
        }
        if ($success){
            DB::commit();
            session()->flash('update', $torneo->nombre);
            return redirect(route('torneos.index'))->with('success');
        }else{
            session()->flash('error', 'error');
            return back()->withInput();
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $torneo = Torneo::find($id);   
        $torneo->delete();
        return redirect(route('torneos.index'))->with('success');
    }
}
