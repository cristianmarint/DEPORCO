<?php

namespace App\Http\Controllers;

use App\Departamento;
use App\Direccion;
use App\Instituto;
use App\Municipio;
use App\Telefono;
use App\TipoEducacion;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class InstitutoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $institutos = Instituto::all();
        return view('instituto.index', compact('institutos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $tiposEducacion = TipoEducacion::orderBy('tipo', 'asc')->get();
        $departamentos = Departamento::orderBy('nombre', 'asc')->get();
        return view('instituto.create', compact('departamentos', 'tiposEducacion'));
    }

    /**
     * Display the specified resource .
     *
     * @param  int  $id
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
        $data = $request->validate([
            'nit' => 'required|min:5|max:20|unique:instituto,nit',
            'codigo_dane' => 'required|min:5|max:20|unique:instituto,codigo_dane',
            'nombre' => 'required|min:7|max:150',
            'logo'   => 'image',
            'departamento' => 'required|integer|not_in:0|exists:departamento,id',
            'municipio' => 'required|integer|not_in:0|exists:municipio,id',
            'tipo_educacion' => 'required|integer|not_in:0|exists:tipo_educacion,id',
            'calle' => 'required|string|min:3|max:50',
            'carrera' => 'required|string|min:3|max:10',
            'numero' => 'required|string|min:3|max:5',
            'tipo_telefono' => 'required|integer|not_in:0|exists:telefono,id',
            'telefono' => 'required|integer'
        ]);

        DB::beginTransaction();

        try{
            if ($request->hasFile('logo')) {
                $archivo = $request->file('logo');
                $nombreImg = 'img/instituto/' . time() . '-' . $archivo->getClientOriginalName();
                if ($archivo->move(public_path() . '/img/instituto', $nombreImg)) {
                    echo "guardado";
                }
            } else {
                $nombreImg = 'img/instituto/default.png';
            }

            $telefono = NEW Telefono();
            $telefono->tipo = $request->input('tipo_telefono');
            $telefono->numero = $request->input('telefono');
            $telefono->save();

            $direccion = NEW Direccion();
            $direccion->calle = $request->input('calle');
            $direccion->carrera =  $request->input('carrera');
            $direccion->numero = $request->input('numero');
            $direccion->save();

            $instituto = NEW Instituto();
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
            return redirect(route('institutos.index'));
        }else{
            if (file_exists(public_path($nombreImg))) {
                if($nombreImg != 'img/instituto/default.png'){
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
        $tiposEducacion = TipoEducacion::orderBy('tipo', 'asc')->get();
        $departamentos = Departamento::orderBy('nombre', 'asc')->get();
        $instituto = Instituto::findOrFail($id);
        return view('instituto.edit', compact('instituto', 'departamentos', 'tiposEducacion', 'tiposTelefono'));
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
        $instituto = Instituto::findOrFail($id);

        $data = $request->validate([
            'nit' => 'required|min:5|max:20|unique:instituto,nit,'.$instituto->id,
            'codigo_dane' => 'required|min:5|max:20|unique:instituto,codigo_dane,'.$instituto->id,
            'nombre' => 'required|min:7|max:150',
            'logo'   => 'image',
            'departamento' => 'required|integer|not_in:0|exists:departamento,id',
            'municipio' => 'required|integer|not_in:0|exists:municipio,id',
            'tipo_educacion' => 'required|integer|not_in:0|exists:tipo_educacion,id',
            'calle' => 'required|string|min:3|max:50',
            'carrera' => 'required|string|min:3|max:10',
            'tipo_telefono' => 'required|integer|not_in:0|exists:telefono,id',
            'numero' => 'required|string|min:3|max:5',
            'telefono' => 'required|integer'
        ]);

        DB::beginTransaction();

        try{
            if($request->hasFile('logo')){
                $archivo = $request->file('logo');
                $nombreImg = 'img/instituto/'.time().'-'.$archivo->getClientOriginalName();

                if (file_exists(public_path($instituto->logo))) {
                    if($instituto->logo != 'img/instituto/default.png'){
                        unlink(public_path($instituto->logo));
                    }
                }
                if($archivo->move(public_path().'/img/instituto',$nombreImg)){
                    echo "Guardado";
                }else{
                    echo "error al guardar";
                }
            }else{
                $nombreImg = $instituto->logo;
            }

            $telefono = Telefono::findOrFail($instituto->telefono_id);
            $telefono->tipo = $request->input('tipo_telefono');
            $telefono->numero = $request->input('telefono');
            $telefono->save();

            $direccion = Direccion::findOrFail($instituto->direccion_id);
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
            return redirect(route('institutos.index'))->with('success', $success);
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
        Instituto::findOrFail($id)->delete();
        return redirect(route('institutos.index'));
    }
}
