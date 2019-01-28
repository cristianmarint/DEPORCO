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
            'tipo_telefono' => 'required|integer|not_in:0|exists:telefono,id',
            'numero' => 'required|string|min:3|max:5',
            'telefono' => 'required|integer'
        ]);

        DB::transaction(function () use ($data, $request) {

            if ($request->hasFile('logo')) {
                $archivo = $request->file('logo');
                $nombreImg = 'img/instituto/' . time() . '-' . $archivo->getClientOriginalName();
                if ($archivo->move(public_path() . '/img/instituto', $nombreImg)) {
                    echo "Guardado";
                } else {
                    echo "error al guardar";
                }
            } else {
                $nombreImg = 'img/instituto/default.png';
            }

            $telefono = Telefono::create([
                'numero' => $data['telefono'],
                'tipo' => $data['tipo_telefono']
            ]);

            $direccion = Direccion::create([
                'calle' => $data['calle'],
                'carrera' => $data['carrera'],
                'numero' => $data['numero'],
            ]);

            Instituto::create([
                'codigo_dane' => $data['codigo_dane'],
                'nit' => $data['nit'],
                'nombre' => $data['nombre'],
                'logo' => $nombreImg,
                'municipio_id' => $data['municipio'],
                'tipo_educacion_id' => $data['tipo_educacion'],
                'telefono_id' => $telefono->id,
                'direccion_id' => $direccion->id,
                'user_id' => Auth::user()->id
            ]);
        }, 2);

        return redirect(route('institutos.index'));
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
        $tiposTelefono = Telefono::orderBy('tipo', 'asc')->get();
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

        DB::transaction(function () use ($data, $request, $instituto) {

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
            Telefono::find($instituto->telefono_id)
                ->update([
                    'numero' => $data['telefono'],
                    'tipo' => $data['tipo_telefono']
                ]);

            Direccion::find($instituto->direccion_id)
                ->update([
                    'calle' => $data['calle'],
                    'carrera' => $data['carrera'],
                    'numero' => $data['numero'],
                ]);

            Instituto::find($instituto->id)->
                update([
                    'codigo_dane' => $data['codigo_dane'],
                    'nit' => $data['nit'],
                    'nombre' => $data['nombre'],
                    'logo' => $nombreImg,
                    'municipio_id' => $data['municipio'],
                    'tipo_educacion_id' => $data['tipo_educacion'],
                    'telefono_id' => $instituto->telefono_id,
                    'direccion_id' => $instituto->direccion_id,
                    'user_id' => Auth::user()->id
                ]);
        }, 2);

        return redirect(route('institutos.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function destroy($id)
    {
        Instituto::find($id)->delete();
        return redirect(route('institutos.index'));
    }
}
