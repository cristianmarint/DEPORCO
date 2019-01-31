<?php

namespace App\Http\Controllers;

use App\Equipo;

use App\Direccion;
use App\Instituto;
use App\Colores;

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
        $equipos = Equipo::all();
        return view('equipo.index', compact('equipos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $institutos = Instituto::orderBy('nombre', 'asc')->get();
        $colores = Colores::orderBy('color', 'asc')->get();

        return view('equipo.create', compact('institutos','colores'));
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
            'nombre' => 'required|min:3|max:60',
            'logo'   => 'image',
            'instituto' => 'required|integer|not_in:0|exists:instituto,id',
            'colores' => 'required|integer|not_in:0|exists:colores,id'
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


            Equipo::create([
                'nombre' => $data['nombre'],
                'logo' => $nombreImg,
                'instituto_id' => $data['instituto'],
                'colores_id' => $data['colores'],
                'user_id' => Auth::user()->id
            ]);
        });

        return redirect(route('equipos.index'));
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
        $equipo = Equipo::findOrFail($id);
        $institutos = Instituto::orderBy('nombre', 'asc')->get();
        $colores = Colores::orderBy('color', 'asc')->get();
        return view('equipo.edit',compact('equipo','institutos','colores'));
        
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
        $equipo = Equipo::findOrFail($id);
        $data = $request->validate([
            'nombre' => 'required|min:3|max:60',
            'logo'   => 'image',
            'instituto' => 'required|integer|not_in:0|exists:instituto,id',
            'colores' => 'required|integer|not_in:0|exists:colores,id'
        ]);

        DB::transaction(function () use ($data, $request, $equipo) {
            if($request->hasFile('logo')){
                $archivo = $request->file('logo');
                $nombreImg = 'img/equipo/'.time().'-'.$archivo->getClientOriginalName();
                if (file_exists(public_path($equipo->logo))) {
                    if($equipo->logo != 'img/equipo/default.png'){
                        unlink(public_path($equipo->logo));
                    }
                }
                if($archivo->move(public_path().'/img/equipo',$nombreImg)){
                    echo "Guardado";
                }else{
                    echo "error al guardar";
                }
            }else{
                $nombreImg = $equipo->logo;
            }
            Equipo::find($equipo->id)->
                update([
                    'nombre' => $data['nombre'],
                    'logo' => $nombreImg,
                    'instituto_id' => $data['instituto'],
                    'colores_id' => $data['colores'],
                    'user_id' => Auth::user()->id
                ]);
        }, 2);
        return redirect(route('equipos.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Equipo::find($id)->delete();
        return redirect(route('equipo.index'));
    }
}
