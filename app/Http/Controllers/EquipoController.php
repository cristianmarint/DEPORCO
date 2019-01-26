<?php

namespace App\Http\Controllers;

use App\Equipo;

use App\Direccion;
use App\Instituto;
use App\ColoresUniforme;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class EquipoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $Equipos = Equipo::where('deleted_at', null)->get();
        return view('equipo.index', compact('equipos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $equipos = Equipo::orderBy('nombre', 'asc')->get();
        return view('equipo.create', compact('equipos'));
    }

    /**
     * Display the specified resource .
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response json
     */
    public function getEquipo($id){
        $equipo = Equipo::where('equipo_id',$id)
            ->orderBy('nombre', 'asc')
            ->get();
        return response()->json($equipo);
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
            $nombreImg = 'img/default.png';

            if ($request->hasFile('logo')) {
                $archivo = $request->file('logo');
                $nombreImg = 'img/instituto/' . time() . '-' . $archivo->getClientOriginalName();
                if ($archivo->move(public_path() . '/img/instituto', $nombreImg)) {
                    echo "Guardado";
                } else {
                    echo "error al guardar";
//                    Enviar error al no guardar
                }
            } else {
                $nombreImg = 'img/default.png';
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
        });

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
        $equipo = Equipo::findOrFail($id);
        return view('equipo.show', compact('equipo'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('equipo.edit');
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
