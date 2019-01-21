<?php

namespace App\Http\Controllers;

use App\Instituto;
use App\Departamento;
use App\Municipio;
use App\Direccion;
use App\Telefono;
use Illuminate\Http\Request;
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
        $institutos = Instituto::where('estado', 1)->get();
        return View('institutos.index', compact('institutos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $departamentos = Departamento::orderBy('departamento', 'asc')->get();
        return view('institutos.create', compact('departamentos'));
    }

    /**
     * Display the specified resource .
     *
     * @param  int  $id_departamento
     * @return \Illuminate\Http\Response json
     */
    public function getMunicipio($id_departamento){
        $municipios = Municipio::where('id_departamento',$id_departamento)
            ->orderBy('municipio', 'asc')
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
        $validatedData = $request->validate([
            'nit' => 'required|min:5|max:20|unique:institutos,nit',
            'codigo_dane' => 'required|min:5|max:20|unique:institutos,codigo_dane',
            'nombre_institucion' => 'required|min:7|max:150',
            'logo'   => 'image',
            'departamento' => 'required|integer|not_in:0',
            'municipio' => 'required|integer|not_in:0',
            'tipo_educacion' => 'required|integer|not_in:0',
            'direccion' => 'required|string|min:5|max:50',
            'telefono' => 'required|integer'

        ]);

        $nombre = 'img/default.png';

        if($request->hasFile('logo')){
            $archivo = $request->file('logo');
            $nombre = 'img/institutos/'.time().'-'.$archivo->getClientOriginalName();
            if($archivo->move(public_path().'/img/institutos',$nombre)){
                echo "Guardado";
            }else{
                echo "error al guardar";
            }
        }else{
            $nombre = 'img/default.png';
        }

        $instituto = NEW Instituto();
        $instituto->nit = $request->input('nit');
        $instituto->codigo_dane = $request->input('codigo_dane');
        $instituto->nombre_institucion = $request->input('nombre_institucion');
        $instituto->logo = $nombre;
        $instituto->municipio_id = $request->input('municipio');
        $instituto->tipo_educacion = $request->input('tipo_educacion');
        $instituto->direccion = $request->input('direccion');
        $instituto->telefono = $request->input('telefono');
        $instituto->save();

        return redirect(route('institutos.index'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id_instituto
     * @return \Illuminate\Http\Response
     */
    public function show($id_instituto)
    {
        $instituto = DB::table('institutos')
            ->join('municipios as a', 'institutos.municipio_id', '=', 'a.id_municipio')
            ->join('departamentos as b', 'a.id_departamento', '=', 'b.id_departamento')
            ->join('direccion', 'direccion.id_direccion', '=', 'direccion_id')
            ->join('telefono', 'telefono.id_telefono', '=', 'telefono_id')
            ->where('id_instituto', '=', "$id_instituto")
            ->where('estado','=', 1)
            ->first(['nit', 'codigo_dane', 'nombre_institucion', 'logo','direccion', 'telefono', 'tipo_educacion', 'municipio', 'departamento']);
//          dd($instituto);
        return view('institutos.show', compact('instituto'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id_instituto
     * @return \Illuminate\Http\Response
     */
    public function edit($id_instituto)
    {
        $instituto = Instituto::where('id_instituto', $id_instituto)->firstOrfail();
        $instituto = DB::table('institutos')
        ->join('municipios as a', 'institutos.municipio_id', '=', 'a.id_municipio')
        ->join('departamentos as b', 'a.id_departamento', '=', 'b.id_departamento')
        ->join('direccion', 'direccion.id_direccion', '=', 'direccion_id')
        ->join('telefono', 'telefono.id_telefono', '=', 'telefono_id')
        ->where('id_instituto', '=', "$id_instituto")
        ->where('estado','=', 1)
        ->first(['nit', 'codigo_dane', 'nombre_institucion', 'logo', 'direccion', 'telefono', 'tipo_educacion', 'municipio', 'departamento','institutos.id_instituto','b.id_departamento']);
//        dd($instituto);
        $departamentos = Departamento::all();
        return view('institutos.edit', compact('instituto', 'departamentos'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id_instituto
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id_instituto)
    {
        $instituto = Instituto::where('id_instituto', $id_instituto)->first();

        $validatedData = $request->validate([
            'nit' => 'required|min:5|max:20',
            'codigo_dane' => 'required|min:5|max:20',
            'nombre_institucion' => 'required|min:7|max:150',
            'logo'   => 'image',
            'departamento' => 'required|integer|not_in:0',
            'municipio' => 'required|integer|not_in:0',
            'tipo_educacion' => 'required|integer|not_in:0',
            'direccion' => 'required|string|min:5|max:50',
            'telefono' => 'required|integer'
        ]);

        $nombre = $instituto->logo;

        if($request->hasFile('logo')){
            $archivo = $request->file('logo');
            $nombre = 'img/institutos/'.time().'-'.$archivo->getClientOriginalName();

            if (file_exists(public_path($instituto->logo))) {
                if($instituto->logo != 'img/institutos/default.png'){
                    unlink(public_path($instituto->logo));
                }
            }
            if($archivo->move(public_path().'/img/institutos',$nombre)){
                echo "Guardado";
            }else{
                echo "error al guardar";
            }
        }else{
            $nombre = 'img/default.png';
        }

        DB::table('institutos')
            ->where('id_instituto', $id_instituto)
            ->update([
                'nit' => $request->input('nit'),
                'codigo_dane' => $request->input('codigo_dane'),
                'nombre_institucion' => $request->input('nombre_institucion'),
                'logo' => $nombre,
                'id_municipio' => $request->input('municipio'),
                'tipo_educacion' => $request->input('tipo_educacion'),
                'direccion' => $request->input('direccion'),
                'telefono' => $request->input('telefono'),
                'updated_at' => now()
                 ]);

        return redirect(route('institutos.index'));

    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id_instituto
     * @return \Illuminate\Http\Response
     */
    public function destroy($id_instituto)
    {
        DB::table('institutos')
            ->where('id_instituto', $id_instituto)
            ->update(['estado' => 0]);

        return redirect(route('institutos.index'));
    }

}
