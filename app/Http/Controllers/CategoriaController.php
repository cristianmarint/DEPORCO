<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Categoria;
use Illuminate\Support\Facades\DB;

class CategoriaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categorias = Categoria::where('estado',1)->get();
        return view('categorias.index', compact('categorias'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('categorias.create');
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
            'categoria' => 'required|string|min:5|max:50',
            'descripcion' => 'required|string|min:7|max:150'
        ]);

        $categoria = NEW Categoria();
        $categoria->categoria = $request->input('categoria');
        $categoria->descripcion = $request->input('descripcion');
        $categoria->save();

        return redirect(route('categorias.index'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id_categoria)
    {
        $categorias = DB::table('categoria')
            ->where('id_categoria','=', "$id_categoria")
            ->where('estado','=','1')
            ->first(['categoria','descripcion','estado']);

        return view('categorias.show', compact('categorias'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id_categoria)
    {
        $categorias = DB::table('categoria')
            ->where('id_categoria','=', "$id_categoria")
            ->where('estado','=','1')
            ->first(['id_categoria','categoria','descripcion','estado']);

        return view('categorias.edit', compact('categorias'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id_categoria)
    {
        $validatedData = $request->validate([
            'categoria' => 'required|string|min:5|max:50',
            'descripcion' => 'required|string|min:7|max:150'
        ]);

        DB::table('categoria')
            ->where('id_categoria', '=', "$id_categoria")
            ->update([
                'categoria' => $request->input('categoria'),
                'descripcion' => $request->input('descripcion'),
                'updated_at' => now()
            ]);


        return redirect(route('categorias.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id_categoria)
    {
        DB::table('categoria')
            ->where('id_categoria', $id_categoria)
            ->update(['estado' => 0]);

        return redirect(route('categorias.index'));
    }
}
