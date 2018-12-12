<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Temporada;

class Temporada_deleteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $temporadas = Temporada::where('estado',0)->get();
        return view('temporadas.index', compact('temporadas'));
    }
}
