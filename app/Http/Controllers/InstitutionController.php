<?php

namespace App\Http\Controllers;

use App\Models\State;
use App\Models\Address;
use App\Models\Institution;
use App\Models\City;
use App\Models\Phone;
use App\Models\EducationType;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class InstitutionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $institutos = Institution::all();
        return view('institution.index', compact('institutos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $tiposEducacion = EducationType::orderBy('tipo', 'asc')->get();
        $departamentos = State::orderBy('nombre', 'asc')->get();
        return view('institution.create', compact('departamentos', 'tiposEducacion'));
    }

    /**
     * Display the specified resource .
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response json
     */
    public function getCity($id){
        $municipios = City::where('departamento_id',$id)
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
        $data = $request->validate([
            'nit' => 'required|min:5|max:20|unique:instituto,nit',
            'codigo_dane' => 'required|min:5|max:20|unique:instituto,codigo_dane',
            'nombre' => 'required|min:7|max:150',
            'logo'   => 'image',
            'departamento' => 'required|integer|not_in:0|exists:departamento,id',
            'municipio' => 'required|integer|not_in:0|exists:municipio,id',
            'tipo_educacion' => 'required|integer|not_in:0|exists:tipo_educacion,id',
            'calle' => 'required|string|min:1|max:50',
            'carrera' => 'required|string|min:1|max:10',
            'numero' => 'required|string|min:1|max:5',
            'tipo_telefono' => 'required|integer|not_in:0|exists:telefono,id',
            'telefono' => 'required|digits_between:7,12|numeric',
        ]);

        DB::beginTransaction();

        try{
            if ($request->hasFile('logo')) {
                $archivo = $request->file('logo');
                $nombreImg = 'storage/storage/img/instituto/' . time() . '-' . $archivo->getClientOriginalName();
                if ($archivo->move('storage/storage/img/instituto', $nombreImg)) {
                    echo "guardado";
                }
            } else {
                $nombreImg = 'storage/storage/img/instituto/default.png';
            }

            $telefono = NEW Phone();
            $telefono->tipo = $request->input('tipo_telefono');
            $telefono->numero = $request->input('telefono');
            $telefono->save();

            $direccion = NEW Address();
            $direccion->calle = $request->input('calle');
            $direccion->carrera =  $request->input('carrera');
            $direccion->numero = $request->input('numero');
            $direccion->save();

            $instituto = NEW Institution();
            $instituto->codigo_dane = $request->input('codigo_dane');
            $instituto->nit = $request->input('nit');
            $instituto->nombre = $request->input('nombre');
            $instituto->logo = $nombreImg;
            $instituto->municipio_id = $request->input('municipio');
            $instituto->tipo_educacion_id = $request->input('tipo_educacion');
            $instituto->telefono_id = $telefono->id;
            $instituto->direccion_id = $direccion->id;
            $instituto->user_id = Auth::user()->id;
            $instituto->save();
            $success = true;

        } catch (\exception $e){
            $success = false;
            $error_save = $e->getMessage();
            DB::rollback();
        }
        if ($success){
            DB::commit();
            session()->flash('create', $instituto->nombre);
            return redirect(route('institutions.index'));
        }else{
            if (file_exists(public_path($nombreImg))) {
                if($nombreImg != 'storage/storage/img/instituto/default.png'){
                    unlink(public_path($nombreImg));
                }
            }
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
        $instituto = Institution::findOrFail($id);
        return view('institution.show', compact('instituto'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $tiposEducacion = EducationType::orderBy('tipo', 'asc')->get();
        $departamentos = State::orderBy('nombre', 'asc')->get();
        $instituto = Institution::findOrFail($id);
        $tiposTelefono = Phone::findOrFail($id);
        return view('institution.edit', compact('instituto', 'departamentos', 'tiposEducacion', 'tiposTelefono'));
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
        $instituto = Institution::findOrFail($id);

        $data = $request->validate([
            'nit' => 'required|min:5|max:20|unique:instituto,nit,'.$instituto->id,
            'codigo_dane' => 'required|min:5|max:20|unique:instituto,codigo_dane,'.$instituto->id,
            'nombre' => 'required|min:7|max:150',
            'logo'   => 'image',
            'departamento' => 'required|integer|not_in:0|exists:departamento,id',
            'municipio' => 'required|integer|not_in:0|exists:municipio,id',
            'tipo_educacion' => 'required|integer|not_in:0|exists:tipo_educacion,id',
            'calle' => 'required|string|min:1|max:50',
            'carrera' => 'required|string|min:1|max:10',
            'tipo_telefono' => 'required|integer|not_in:0|exists:telefono,id',
            'numero' => 'required|string|min:1|max:5',
            'telefono' => 'required|digits_between:7,12|numeric',
        ]);

        DB::beginTransaction();

        try{
            if($request->hasFile('logo')){
                $archivo = $request->file('logo');
                $nombreImg = 'storage/storage/img/instituto/'.time().'-'.$archivo->getClientOriginalName();
                if (file_exists(public_path($instituto->logo))) {
                    if($instituto->logo != 'storage/storage/img/instituto/default.png'){
                        unlink(public_path($instituto->logo));
                    }
                }
                if($archivo->move('storage/storage/img/instituto',$nombreImg)){
                    echo "Guardado";
                }else{
                    echo "error al guardar";
                }
            }else{
                $nombreImg = $instituto->logo;
            }

            $telefono = Phone::findOrFail($instituto->telefono_id);
            $telefono->tipo = $request->input('tipo_telefono');
            $telefono->numero = $request->input('telefono');
            $telefono->save();

            $direccion = Address::findOrFail($instituto->direccion_id);
            $direccion->calle = $request->input('calle');
            $direccion->carrera =  $request->input('carrera');
            $direccion->numero = $request->input('numero');
            $direccion->save();

            $instituto->codigo_dane = $request->input('codigo_dane');
            $instituto->nit = $request->input('nit');
            $instituto->nombre = $request->input('nombre');
            $instituto->logo = $nombreImg;
            $instituto->municipio_id = $request->input('municipio');
            $instituto->tipo_educacion_id = $request->input('tipo_educacion');
            $instituto->user_id = Auth::user()->id;
            $instituto->save();
            $success = true;

        } catch (\exception $e){
            $success = false;
            $error = $e->getMessage();
            DB::rollback();
        }
        if ($success){
            DB::commit();
            session()->flash('update', $instituto->nombre);
            return redirect(route('institutions.index'));
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
        Institution::findOrFail($id)->delete();
        return redirect(route('institutions.index'));
    }
}
