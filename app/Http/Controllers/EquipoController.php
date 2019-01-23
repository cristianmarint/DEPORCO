<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Equipo;
use Illuminate\Support\Facades\DB;
use App\Instituto;

class EquipoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $equipos = DB::table('equipos')
            ->join('institutos as a', 'equipos.id_instituto', '=', 'a.id_instituto')
            ->where('equipos.estado','=', 1)
            ->where('a.estado','=',1)
            ->get(['id_equipo', 'nombre_equipo', 'nombre_institucion', 'equipos.logo']);

        return view('equipos.index', compact('equipos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $institutos = DB::table('institutos')
            ->join('municipios as a', 'institutos.id_municipio', '=', 'a.id_municipio')
            ->where('institutos.estado','=', 1)
            ->get(['id_instituto', 'nombre_institucion', 'municipio']);
        return view('equipos.create', compact('institutos'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'nombre_equipo' => 'required|string|min:7|max:150',
            'colores_equipo' => 'required|string|min:3|max:30',
            'instituto' => 'required|integer|not_in:0|exists:institutos,id_instituto'
        ]);

        if($request->hasFile('logo')){
            $archivo = $request->file('logo');
            $nombre = 'img/equipos/'.time().'-'.$archivo->getClientOriginalName();
            $archivo->move(public_path().'/img/equipos',$nombre);
        }else{
            $nombre = 'img/equipos/default.png';
        }

        $equipo = new Equipo();
        $equipo->nombre_equipo = $request->input('nombre_equipo');
        $equipo->logo = $nombre;
        $equipo->colores_uniforme = $request->input('colores_equipo');
        $equipo->id_instituto = $request->input('instituto');
        $equipo->save();

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
        $equipo = DB::table('equipos')
            ->join('institutos as a', 'equipos.id_instituto', '=', 'a.id_instituto')
            ->where('equipos.id_equipo', '=', "$id")
            ->where('equipos.estado', '=', 1)
            ->first(['nombre_equipo', 'nombre_institucion', 'equipos.logo', 'colores_uniforme']);
//          dd($equipo);
        return view('equipos.show', compact('equipo'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $equipo = DB::table('equipos')
            ->join('institutos as a', 'equipos.id_instituto', '=', 'a.id_instituto')
            ->where('equipos.id_equipo', '=', "$id")
            ->where('equipos.estado', '=', 1)
            ->first(['id_equipo','equipos.id_instituto','nombre_equipo', 'nombre_institucion', 'equipos.logo', 'colores_uniforme']);
//          dd($equipo);
        $instituto = DB::table('institutos')
            ->join('municipios as a', 'institutos.id_municipio', '=', 'a.id_municipio')
            ->where('institutos.estado','=',1)
            ->get(['id_instituto', 'nombre_institucion', 'a.id_municipio', 'municipio']);
        return view('equipos.edit', compact('equipo'), compact('instituto'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id_equipo)
    {
        $equipo = Equipo::where('id_equipo', $id_equipo)->first();

        $validatedData = $request->validate([
            'nombre_equipo' => 'required|string|min:7|max:150',
            'colores_equipo' => 'required|string|min:3|max:50',
            'instituto' => 'required|integer|not_in:0|exists:institutos,id_instituto'
        ]);


       if($request->hasFile('logo')){
            $archivo = $request->file('logo');
            $nombre = 'img/equipos/'.time().'-'.$archivo->getClientOriginalName();

           if (file_exists(public_path($equipo->logo))) {
               if($equipo->logo != 'img/equipos/default.png'){
                   unlink(public_path($equipo->logo));
               }
           }

            if($archivo->move(public_path().'/img/equipos',$nombre)){
                echo "Guardado";
            }else{
                echo "error al guardar";
            }
       }else{
           $nombre = 'img/equipos/default.png';
       }

        DB::table('equipos')
            ->where('id_equipo', $id_equipo)
            ->update([
                'nombre_equipo' => $request->input('nombre_equipo'),
                'colores_uniforme' => $request->input('colores_equipo'),
                'id_instituto' => $request->input('instituto'),
                'logo' => $nombre,
                'updated_at' => now()
            ]);

        return redirect(route('equipos.index'));

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id_equipo)
    {
        DB::table('equipos')
            ->where('id_equipo', $id_equipo)
            ->update(['estado' => 0]);

        return redirect(route('equipos.index'));
    }
}
