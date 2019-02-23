<?php
/*
 * @Author: EdwinLopez12 
 * @Date: 2019-02-23 07:27:19 
 * @Last Modified by: CristianMarinT
 * @Last Modified time: 2019-02-23 07:43:32
 */

namespace App\Http\Controllers;

use App\Models\Calendario;
use App\Models\Fase;
use App\Models\Torneo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class CalendarioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $calendarios = Calendario::all();
        return view('calendario.index', compact('calendarios'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $fases = Fase::all();
        $torneos = Torneo::all();
        return view('calendario.create', compact('fases', 'torneos'));
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
            'jornada' => 'required|integer|not_in:0|min:0|max:299',
            'fecha' => 'required|date',
            'fase' => 'required|integer|not_in:0',
            'torneo' => 'required|integer|not_in:0'
        ]);

        DB::beginTransaction();
        try{
            $calendario = NEW Calendario();
            $calendario->jornada = $request->input('jornada');
            $calendario->fecha = $request->input('fecha');
            $calendario->torneo_id = $request->input('torneo');
            $calendario->fase_id= $request->input('fase');
            $calendario->user_id = Auth::user()->id;
            $calendario->save();
            $success = true;
        } catch (\exception $e){
            $success = false;
            $error_save = $e->getMessage();
            DB::rollback();
        }
        if ($success){
            DB::commit();
            session()->flash('create', $calendario->jornada);
            return redirect(route('calendarios.index'));
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
        $calendario = Calendario::findOrfail($id);
        return view('calendario.show', compact('calendario'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $torneos = Torneo::all();
        $fases = Fase::all();
        $calendario = Calendario::findOrfail($id);
        return view('calendario.edit', compact('calendario', 'fases', 'torneos'));
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
        $calendario = Calendario::findOrFail($id);

        $data = $request->validate([
            'jornada' => 'required|integer|not_in:0|min:0|max:299',
            'fecha' => 'required|date',
            'fase' => 'required|integer|not_in:0',
            'torneo' => 'required|integer|not_in:0'
        ]);

        DB::beginTransaction();

        try{
            $calendario->jornada = $request->input('jornada');
            $calendario->fecha = $request->input('fecha');
            $calendario->torneo_id = $request->input('torneo');
            $calendario->fase_id= $request->input('fase');
            $calendario->user_id = Auth::user()->id;
            $success = true;
            $calendario->save();

        } catch (\exception $e){
            $success = false;
            $error = $e->getMessage();
            DB::rollback();
        }
        if ($success){
            DB::commit();
            session()->flash('update', $calendario->jornada);
            return redirect(route('calendarios.index'));
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
        Calendario::findOrFail($id)->delete();
        return redirect(route('calendarios.index'));
    }
}
