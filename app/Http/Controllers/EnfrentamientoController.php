<?php
/*
 * @Author: CristianMarinT 
 * @Date: 2019-03-04 16:08:14 
 * @Last Modified by: CristianMarinT
 * @Last Modified time: 2019-05-07 21:01:43
 */
namespace App\Http\Controllers;

use App\Models\Equipo;
use App\Models\Instituto;
use App\Models\Enfrentamiento;
use App\Models\Lugar;
use App\Models\Torneo;
use App\Models\InscripcionEquipo;
use App\Models\Calendario;
use App\Models\Resultado;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class EnfrentamientoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // seleccionar los campos que se muestran de enfrentamiento yt de  resultado para enviarlos y mostrarlos
        $enfrentamientos = Enfrentamiento::all();
        return view('enfrentamiento.index', compact('enfrentamientos'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $lugares = Lugar::orderBy('nombre', 'asc')->get();
        $torneos = Torneo::orderBy('id','asc')->get(); 
        return view('enfrentamiento.create',compact('lugares','torneos'));
    }
    
    /**
     * Retorna los equipos inscritos a un determinado torneo.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response json
     */
    public function getEquipos($id){
        $InscripcionEquipos = InscripcionEquipo::select('equipo_id','torneo_id','nombre')
                                                ->join('equipo','inscripcion_equipo.equipo_id','equipo.id')
                                                ->orderBy('torneo_id', 'asc')
                                                ->where('torneo_id','=',$id)
                                                ->get();
        return response()->json($InscripcionEquipos);
    }
    
    /**
     * Retorna los "calendarios" inscritos a un determinado torneo.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response json
     */
    public function getCalendario($id){
        $InscripcionCalendarios = Calendario::select('calendario.id','fecha','jornada','nombre')
                                                ->join('fase','calendario.fase_id','fase.id')
                                                ->orderBy('fecha', 'asc')
                                                ->where('torneo_id','=',$id)
                                                ->get();
        return response()->json($InscripcionCalendarios);
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
            'calendario'                     => 'required|integer|not_in:0|exists:calendario,id',
            'equipo_local'                   => 'required|integer|not_in:0|exists:inscripcion_equipo,id',
            'resultado_local'                => 'required|integer|not_in:0|min:0|max:99',
            'equipo_visitante'               => 'required|integer|not_in:0|exists:inscripcion_equipo,id',
            'resultado_visitante'            => 'required|integer|not_in:0|min:0|max:99',
            'lugar'                          => 'required|integer|not_in:0|exists:lugar,id',
            
        ]);
        DB::beginTransaction();
        try{
            $enfrentamientos = NEW Enfrentamiento();
            $enfrentamientos->calendario_id = $request->input('calendario');
            $enfrentamientos->inscripcion_equipo_local_id = $request->input('equipo_local');
            $enfrentamientos->inscripcion_equipo_visitante_id = $request->input('equipo_visitante');
            $enfrentamientos->lugar_id = $request->input('lugar');
            $enfrentamientos->user_id = Auth::user()->id;
            $enfrentamientos->save();
            
            $resultados = NEW Resultado();
            $resultados->enfrentamiento_id =$enfrentamientos->id;
            $resultados->resultado_local = $request->input('resultado_local');
            $resultados->resultado_visitante = $request->input('resultado_visitante');
            $resultados->save();
            
            $success = true;
        } catch (\exception $e){
            $success = false;
            $error = $e->getMessage();
            DB::rollback();
        }
        if ($success){
            DB::commit();
            session()->flash('create', $enfrentamientos->id);
            return redirect(route('enfrentamientos.index'))->with('success');
        }else{
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
        $enfrentamiento = Enfrentamiento::findOrFail($id);
        $resultados = Resultado::where('enfrentamiento_id','=',$id)->first();
        // dd($resultados);
        return view('enfrentamiento.show', compact('enfrentamiento','resultados'));
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $enfrentamiento = Enfrentamiento::findOrFail($id);
        return view('enfrentamiento.edit',compact('enfrentamiento'));
        
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
        DB::beginTransaction();
        try{
            if($request->hasFile('logo')){
                $archivo = $request->file('logo');
                $nombreImg = 'storage/storage/img/equipo/'.time().'-'.$archivo->getClientOriginalName();
                if (file_exists(public_path($equipo->logo))) {
                    if($equipo->logo != 'storage/storage/img/equipo/default.png'){
                        unlink(public_path($equipo->logo));
                    }
                }
                if($archivo->move('storage/storage/img/equipo',$nombreImg)){
                    echo "Guardado";
                }else{
                    echo "error al guardar";
                }
            }else{
                $nombreImg = $equipo->logo;
            }
            $equipo->nombre = $request->input('nombre');
            $equipo->logo = $nombreImg;
            $equipo->instituto_id = $request->input('instituto');
            $equipo->colores_id = $request->input('colores');
            $equipo->user_id = Auth::user()->id;
            $equipo->save();
            $success = true;
        } catch (\exception $e){
            $success = false;
            $error = $e->getMessage();
            DB::rollback();
        }
        if ($success){
            DB::commit();
            session()->flash('update', $equipo->nombre);
            return redirect(route('equipos.index'))->with('success');
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
        $enfrentamiento = Enfrentamiento::find($id);   
        // dd($enfrentamiento);
        $enfrentamiento->user_id = Auth::user()->id;
        $enfrentamiento->delete();
        $enfrentamiento->save();
        return redirect(route('enfrentamientos.index'))->with('success');
    }
}