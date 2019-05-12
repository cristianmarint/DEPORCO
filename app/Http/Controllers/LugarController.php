<?php

namespace App\Http\Controllers;

use App\Models\Lugar;

use App\Models\Departamento;
use App\Models\Municipio;
use App\Models\Direccion;
use App\Models\Telefono;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class LugarController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lugares = Lugar::all();
        return view('lugar.index', compact('lugares'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $departamentos = Departamento::orderBy('nombre', 'asc')->get();
        return view('lugar.create', compact('departamentos'));
    }

    /**
     * Display the specified resource .
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response json
     */
    public function getLugar($id){
        $lugar = Lugar::where('lugar_id',$id)
            ->orderBy('nombre', 'asc')
            ->get();
        return response()->json($lugar);
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
            'nombre' => 'required|min:3|max:50',
            'municipio' => 'required|integer|not_in:0|exists:municipio,id',
            'calle' => 'required|string|min:1|max:50',
            'carrera' => 'required|string|min:1|max:10',
            'numero' => 'required|string|min:1|max:10',
            'tipo_telefono' => 'required|integer|not_in:0|exists:telefono,id',
            'telefono' => 'required|digits_between:7,13|numeric',
        ]);

        DB::beginTransaction();
        try{
            $telefono = NEW Telefono();
                $telefono->tipo = $request->input('tipo_telefono');
                $telefono->numero = $request->input('telefono');
            $telefono->save();

            $direccion = NEW Direccion();
                $direccion->calle = $request->input('calle');
                $direccion->carrera =  $request->input('carrera');
                $direccion->numero = $request->input('numero');
            $direccion->save();

            $lugar = NEW Lugar();
                $lugar->nombre = $request->input('nombre');
                $lugar->municipio_id = $request->input('municipio');
                $lugar->telefono_id = $telefono->id;
                $lugar->direccion_id = $direccion->id;
                $lugar->user_id = Auth::user()->id;
            $lugar->save();

            $success = true;
        } catch (\exception $e){
            $success = false;
            $error_save = $e->getMessage();
            DB::rollback();
        }
        if ($success){
            DB::commit();
            session()->flash('create', $lugar->nombre);
            return redirect(route('lugares.index'))->with('success');
        }else{
            session()->flash('error', 'error');
            return back()->withInput();
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
        $lugar = Lugar::findOrFail($id);
        return view('lugar.show', compact('lugar'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $lugar = Lugar::findOrFail($id);
        $departamentos = Departamento::orderBy('nombre', 'asc')->get();
        $telefono = Telefono::orderBy('numero', 'asc')->get();

        return view('lugar.edit',compact('lugar','departamentos','telefono'));
        
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
        $lugar = Lugar::findOrFail($id);
        $data = $request->validate([
            'nombre' => 'required|min:3|max:50',
            'municipio' => 'required|integer|not_in:0|exists:municipio,id',
            'calle' => 'required|string|min:1|max:50',
            'carrera' => 'required|string|min:1|max:10',
            'numero' => 'required|string|min:1|max:10',
            'tipo_telefono' => 'required|integer|not_in:0|exists:telefono,id',
            'telefono' => 'required|digits_between:7,13|numeric',
        ]);

        DB::beginTransaction();
        try{
            $telefono = Telefono::findOrFail($lugar->telefono_id);
                $telefono->tipo = $request->input('tipo_telefono');
                $telefono->numero = $request->input('telefono');
            $telefono->save();

            $direccion = Direccion::findOrFail($lugar->direccion_id);
                $direccion->calle = $request->input('calle');
                $direccion->carrera =  $request->input('carrera');
                $direccion->numero = $request->input('numero');
            $direccion->save();

            $lugar->nombre = $request->input('nombre');
            $lugar->municipio_id = $request->input('municipio');
            $lugar->telefono_id = $telefono->id;
            $lugar->direccion_id = $direccion->id;
            $lugar->user_id = Auth::user()->id;
            $lugar->save();
            $success = true;

        } catch (\exception $e){
            $success = false;
            $error = $e->getMessage();
            DB::rollback();
        }
        if ($success){
            DB::commit();
            session()->flash('update', $lugar->nombre);
            return redirect(route('lugares.index'))->with('success');
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
        $lugar = Lugar::find($id);   
        $lugar->user_id = Auth::user()->id;
        $lugar->delete();
        $lugar->save();
        return redirect(route('lugares.index'))->with('success');

        // Lugar::find($id)->delete();
        // return redirect(route('lugares.index'));
    }
}
