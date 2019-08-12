<?php

namespace App\Http\Controllers;

use App\Models\Temporada;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
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
        $temporadas = Temporada::all();
        return view('temporada.index',compact('temporadas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('temporada.create');
    }

    /**
     * Display the specified resource .
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response json
     */
    public function getCategoria($id){
        $temporadas = Temporada::where('id',$id)
            ->orderBy('descripcion', 'asc')
            ->get();
        return response()->json($temporadas);
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
            'nombre' => 'required|min:3|max:100|not_in:0|unique:temporada,nombre',
            'descripcion' => '',
            'fecha_inicio' => 'required|date',
            'fecha_fin'    => 'required|date',
        ]);

        DB::beginTransaction();
        try{
            $temporada = NEW Temporada();
            $temporada->descripcion = $request->input('descripcion');
            $temporada->fecha_inicio = $request->input('fecha_inicio');
            $temporada->fecha_fin = $request->input('fecha_fin');
            $temporada->save();
            $success = true;
        } catch (\exception $e){
            $success = false;
            $error_save = $e->getMessage();
            DB::rollback();
        }
        if ($success){
            DB::commit();
            session()->flash('create', $temporada->descripcion);
            return redirect(route('temporadas.index'))->with('success');
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
        $temporadas = Temporada::findOrFail($id);
        return view('temporada.show', compact('temporadas'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $temporada = Temporada::findOrFail($id);

        return view('temporada.edit', compact('temporada'));
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
        $temporada = Temporada::findOrFail($id);
        $data = $request->validate([
            'nombre' => 'required|min:3|max:100|not_in:0|unique:temporada,nombre',
            'descripcion' => '',
            'fecha_inicio' => 'required|date',
            'fecha_fin'    => 'required|date',
        ]);

        DB::beginTransaction();
        try{
            $temporada->descripcion = $request->input('descripcion');
            $temporada->fecha_inicio = $request->input('fecha_inicio');
            $temporada->fecha_fin = $request->input('fecha_fin');
            $temporada->save();
            $success = true;
        } catch (\exception $e){
            $success = false;
            $error = $e->getMessage();
            DB::rollback();
        }
        if ($success){
            DB::commit();
            session()->flash('update', $temporada->descripcion);
            return redirect(route('temporadas.index'))->with('success');
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
        $temporada = Temporada::find($id);   
        $temporada->delete();
        return redirect(route('temporadas.index'))->with('success');
    }
}
