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
        $data = $request->validate([
            'foto'   => 'image',
            'cedula' => 'required|max:12|numeric|not_in:0|unique:datos_basicos,cedula',
            'primer_nombre' => 'required|min:3|max:50',
            'segundo_nombre' => 'max:50',
            'primer_apellido' => 'required|min:3|max:50',
            'segundo_apellido' => 'max:50',
            'tipo_sangre' => 'required|integer|not_in:0|exists:tipo_sangre,id',
            'genero' => 'required|integer|not_in:0|exists:genero,id',
            'eps' => 'required|integer|not_in:0|exists:eps,id',
            'tipo_telefono' => 'required|integer|not_in:0|exists:telefono,id',
            'telefono' => 'required|numeric|min:7',
            'email' => 'min:5|max:191|unique:datos_basicos,email',
            'departamento' => 'required|integer|not_in:0|exists:departamento,id',
            'municipio' => 'required|integer|not_in:0|exists:municipio,id',
            'calle' => 'required|string|min:1|max:50',
            'carrera' => 'required|string|min:1|max:10',
            'numero' => 'required|string|min:1|max:5',
        ]);

        DB::transaction(function () use ($data, $request) {
            $nombreImg = 'img/datosbasicos/default.png';

            if ($request->hasFile('foto')) {
                $archivo = $request->file('foto');
                $nombreImg = 'img/datosbasicos/' . time() . '-' . $archivo->getClientOriginalName();
                if ($archivo->move(public_path() . '/img/datosbasicos', $nombreImg)) {
                    echo "Guardado";
                } else {
                    echo "error al guardar";
                }
            } else {
                $nombreImg = 'img/datosbasicos/default.png';
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

            DatosBasicos::create([
                'foto'              => $nombreImg,
                'cedula'            => $data['cedula'],
                'primer_nombre'     => $data['primer_nombre'],
                'segundo_nombre'    => $data['segundo_nombre'],
                'primer_apellido'   => $data['primer_apellido'],
                'segundo_apellido'  => $data['segundo_apellido'],
                'tipo_sangre_id'    => $data['tipo_sangre'],
                'genero_id'         => $data['genero'],
                'eps_id'            => $data['eps'],
                'email'             => $data['email'],
                'departamento'      => $data['departamento'],
                'municipio_id'      => $data['municipio'],
                'direccion_id'      => $direccion->id,
                'telefono_id'       => $telefono->id,   
            ]);
        });

        return redirect(route('datosbasicos.index'));
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
        $datosbasicos = DatosBasicos::findOrFail($id);
        $departamentos = Departamento::orderBy('nombre', 'asc')->get();
        $tiposangres = TipoSangre::orderBy('tipo', 'asc')->get();
        $generos = Genero::orderBy('id', 'asc')->get();
        $epss = Eps::orderBy('nombre', 'asc')->get();

        return view('datosbasicos.edit', compact('departamentos','datosbasicos','tiposangres','generos','epss'));
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
        $datosbasicos = DatosBasicos::findOrFail($id);
        $data = $request->validate([
            'foto'   => 'image',
            'cedula' => 'required|max:12|numeric|not_in:0|unique:datos_basicos,cedula',
            'primer_nombre' => 'required|min:3|max:50',
            'segundo_nombre' => 'max:50',
            'primer_apellido' => 'required|min:3|max:50',
            'segundo_apellido' => 'max:50',
            'tipo_sangre' => 'required|integer|not_in:0|exists:tipo_sangre,id',
            'genero' => 'required|integer|not_in:0|exists:genero,id',
            'eps' => 'required|integer|not_in:0|exists:eps,id',
            'tipo_telefono' => 'required|integer|not_in:0|exists:telefono,id',
            'telefono' => 'required|numeric|min:7',
            // 'email' => 'min:5|max:191|unique:datos_basicos,email',
            'email' => 'min:5|max:191',
            'departamento' => 'required|integer|not_in:0|exists:departamento,id',
            'municipio' => 'required|integer|not_in:0|exists:municipio,id',
            'calle' => 'required|string|min:1|max:50',
            'carrera' => 'required|string|min:1|max:10',
            'numero' => 'required|string|min:1|max:5',
        ]);

        DB::transaction(function () use ($data, $request, $datosbasicos) {
            
            if($request->hasFile('foto')){
                $archivo = $request->file('foto');
                $nombreImg = 'img/datosbasicos/'.time().'-'.$archivo->getClientOriginalName();
                if (file_exists(public_path($datosbasicos->foto))) {
                    if($datosbasicos->foto != 'img/datosbasicos/default.png'){
                        unlink(public_path($datosbasicos->foto));
                    }
                }
                if($archivo->move(public_path().'/img/datosbasicos',$nombreImg)){
                    echo "Guardado";
                }else{
                    echo "error al guardar";
                }
            }else{
                $nombreImg = $datosbasicos->foto;
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

            DatosBasicos::find($datosbasicos->id)->
                update([
                    'foto'              => $nombreImg,
                    'cedula'            => $data['cedula'],
                    'primer_nombre'     => $data['primer_nombre'],
                    'segundo_nombre'    => $data['segundo_nombre'],
                    'primer_apellido'   => $data['primer_apellido'],
                    'segundo_apellido'  => $data['segundo_apellido'],
                    'tipo_sangre_id'    => $data['tipo_sangre'],
                    'genero_id'         => $data['genero'],
                    'eps_id'            => $data['eps'],
                    'email'             => $data['email'],
                    'departamento'      => $data['departamento'],
                    'municipio_id'      => $data['municipio'],
                    'direccion_id'      => $direccion->id,
                    'telefono_id'       => $telefono->id,   
                ]);
        }, 2);
        return redirect(route('datosbasicos.index'));
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
