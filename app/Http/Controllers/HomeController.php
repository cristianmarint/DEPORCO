<?php

namespace App\Http\Controllers;
use App\Models\Torneo;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware(['auth', 'verified']);
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    /**
     * Display the specified resource .
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response json
     */
    public function getTorneofutbol($id){
        $torneos = Torneo::where('id',$id)
            // ->orderBy('nombre', 'asc')
            ->get();
        return response()->json($torneos);
    }
}
