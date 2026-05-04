<?php
/*
 * @Author: CristianMarinT 
 * @Date: 2019-03-04 16:08:14 
 * @Last Modified by: CristianMarinT
 * @Last Modified time: 2019-05-07 21:01:43
 */
namespace App\Http\Controllers;

use App\Models\Team;
use App\Models\Institution;
use App\Models\GameMatch;
use App\Models\Venue;
use App\Models\Tournament;
use App\Models\TeamRegistration;
use App\Models\Schedule;
use App\Models\MatchResult;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class GameMatchController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // seleccionar los campos que se muestran de enfrentamiento yt de  resultado para enviarlos y mostrarlos
        $enfrentamientos = GameMatch::all();                       
        return view('enfrentamiento.index', compact('enfrentamientos'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $lugares = Venue::orderBy('nombre', 'asc')->get();
        $torneos = Tournament::orderBy('id','asc')->get(); 
        return view('enfrentamiento.create',compact('lugares','torneos'));
    }
    
    /**
     * Retorna los equipos inscritos a un determinado torneo.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response json
     */
    public function getEquipos($id){
        $InscripcionEquipos = TeamRegistration::select('equipo_id','torneo_id','nombre')
                                                ->join('equipo','inscripcion_equipo.equipo_id','equipo.id')
                                                ->orderBy('nombre', 'asc')
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
        $InscripcionCalendarios = Schedule::select('calendario.id','fecha','jornada','nombre')
                                                ->join('fase','calendario.fase_id','fase.id')
                                                ->orderBy('calendario.id', 'asc')
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
            'resultado_local'                => 'required|integer|min:0|max:99',
            'equipo_visitante'               => 'required|integer|not_in:0|exists:inscripcion_equipo,id',
            'resultado_visitante'            => 'required|integer|min:0|max:99',
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
        $enfrentamiento = GameMatch::findOrFail($id);
        $resultados = MatchResult::where('enfrentamiento_id','=',$id)->first();
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
        $enfrentamiento = GameMatch::findOrFail($id);
        $lugares = Venue::orderBy('nombre', 'asc')->get();
        $torneoInscritos = TeamRegistration::where('equipo_id','=',$id)->first();
        $calendarios = Schedule::select('calendario.id','fecha','jornada')
                                    ->join('enfrentamiento','enfrentamiento.calendario_id','calendario.id')
                                    ->orderBy('fecha', 'asc')
                                    ->get();

        $InscripcionEquipos = TeamRegistration::select('inscripcion_equipo.id','torneo_id','nombre')
                                ->join('equipo','inscripcion_equipo.equipo_id','equipo.id')
                                ->orderBy('torneo_id', 'asc')
                                ->get();

        $torneos = Tournament::orderBy('id','asc')->get();
        return view('enfrentamiento.edit', compact('enfrentamiento','lugares','torneos','torneoInscritos','calendarios','InscripcionEquipos'));
        
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
        $enfrentamiento = GameMatch::findOrFail($id);
        $resultado = MatchResult::where('enfrentamiento_id',$id)
                                ->first()
                                ;
        $data = $request->validate([
            'torneo'                         => 'required|integer|not_in:0|exists:torneo,id',
            'lugar'                          => 'required|integer|not_in:0|exists:lugar,id',
            'calendario'                     => 'required|integer|not_in:0|exists:calendario,id',
            'equipo_local'                   => 'required|integer|not_in:0|exists:inscripcion_equipo,id',
            'resultado_local'                => 'min:0|max:99',
            'equipo_visitante'               => 'required|integer|not_in:0|exists:inscripcion_equipo,id',
            'resultado_visitante'            => 'min:0|max:99',
        ]);
        DB::beginTransaction();
        try{
            $enfrentamiento->calendario_id = $request->input('calendario');
            $enfrentamiento->inscripcion_equipo_local_id = $request->input('equipo_local');
            $enfrentamiento->inscripcion_equipo_visitante_id = $request->input('equipo_visitante');
            $enfrentamiento->lugar_id = $request->input('lugar');
            $enfrentamiento->user_id = Auth::user()->id;
            
            $resultado->resultado_local = $request->input('resultado_local');
            $resultado->resultado_visitante = $request->input('resultado_visitante');
            
            $enfrentamiento->save();
            $resultado->save();
            
            $success = true;
        } catch (\exception $e){
            $success = false;
            $error = $e->getMessage();
            dd($error);
            DB::rollback();
        }
        if ($success){
            DB::commit();
            session()->flash('update', $enfrentamiento->id);
            return redirect(route('enfrentamientos.index'))->with('success');
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
        $enfrentamiento = GameMatch::find($id);   
        // dd($enfrentamiento);
        $enfrentamiento->user_id = Auth::user()->id;
        $enfrentamiento->delete();
        $enfrentamiento->save();
        return redirect(route('enfrentamientos.index'))->with('success');
    }
}