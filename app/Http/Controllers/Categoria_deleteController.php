<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Categoria;

class Categoria_deleteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categorias = Categoria::where('estado',0)->get();
        return view('categorias.index', compact('categorias'));
    }
}
