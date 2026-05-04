<?php

namespace App\Http\Controllers;

use App\Models\Venue;

use App\Models\State;
use App\Models\City;
use App\Models\Address;
use App\Models\Phone;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class VenueController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lugares = Venue::all();
        return view('venue.index', compact('lugares'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $departamentos = State::orderBy('nombre', 'asc')->get();
        return view('venue.create', compact('departamentos'));
    }

    /**
     * Display the specified resource .
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response json
     */
    public function getVenue($id){
        $lugar = Venue::where('lugar_id',$id)
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
            $telefono = NEW Phone();
                $telefono->tipo = $request->input('tipo_telefono');
                $telefono->numero = $request->input('telefono');
            $telefono->save();

            $direccion = NEW Address();
                $direccion->calle = $request->input('calle');
                $direccion->carrera =  $request->input('carrera');
                $direccion->numero = $request->input('numero');
            $direccion->save();

            $lugar = NEW Venue();
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
            return redirect(route('venues.index'))->with('success');
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
        $lugar = Venue::findOrFail($id);
        return view('venue.show', compact('lugar'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $lugar = Venue::findOrFail($id);
        $departamentos = State::orderBy('nombre', 'asc')->get();
        $telefono = Phone::orderBy('numero', 'asc')->get();

        return view('venue.edit',compact('lugar','departamentos','telefono'));
        
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
        $lugar = Venue::findOrFail($id);
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
            $telefono = Phone::findOrFail($lugar->telefono_id);
                $telefono->tipo = $request->input('tipo_telefono');
                $telefono->numero = $request->input('telefono');
            $telefono->save();

            $direccion = Address::findOrFail($lugar->direccion_id);
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
            return redirect(route('venues.index'))->with('success');
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
        $lugar = Venue::find($id);   
        $lugar->user_id = Auth::user()->id;
        $lugar->delete();
        $lugar->save();
        return redirect(route('venues.index'))->with('success');

        // Venue::find($id)->delete();
        // return redirect(route('venues.index'));
    }
}
