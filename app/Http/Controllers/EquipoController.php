<?php
/*
 * @Author: CristianMarinT 
 * @Date: 2019-02-20 14:08:14 
 * @Last Modified by:   CristianMarinT 
 * @Last Modified time: 2019-02-20 14:08:14 
 */
namespace App\Http\Controllers;
use App\Models\Equipo;
use App\Models\Direccion;
use App\Models\Instituto;
use App\Models\Colores;
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
        DB::beginTransaction();
        try{
            if ($request->hasFile('logo')) {
                $archivo = $request->file('logo');
                $nombreImg = 'storage/storage/img/equipo/' . time() . '-' . $archivo->getClientOriginalName();
                if ($archivo->move('storage/storage/img/equipo', $nombreImg)) {
                    echo "guardado";
                    $success = true;
                }
            } else {
                $nombreImg = 'storage/storage/img/equipo/default.png';
            }
            $equipo = NEW Equipo();
                $equipo->nombre = $request->input('nombre');
                $equipo->logo = $nombreImg;
                $equipo->instituto_id = $request->input('instituto');
                $equipo->colores_id = $request->input('colores');
                $equipo->user_id = Auth::user()->id;
            $equipo->save();
        } catch (\exception $e){
            $success = false;
            $error = $e->getMessage();
            DB::rollback();
        }
        if ($success){
            DB::commit();
            session()->flash('create', $equipo->nombre);
            return redirect(route('equipos.index'))->with('success');
        }else{
            if (file_exists(public_path($nombreImg))) {
                if($nombreImg != 'storage/storage/img/equipo/default.png'){
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
        $equipo = Equipo::find($id);   
        $equipo->user_id = Auth::user()->id;
        $equipo->delete();
        $equipo->save();
        return redirect(route('equipos.index'))->with('success');
    }
}