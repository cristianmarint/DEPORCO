<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Instituto;

class Instituto_deleteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $institutos = Instituto::where('estado', 0)->get();
        return View('institutos.index', compact('institutos'));
    }
}
