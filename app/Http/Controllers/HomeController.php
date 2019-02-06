<?php

namespace App\Http\Controllers;

use App\EnfrentamientoArbitro;





use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $enfrentamientos = EnfrentamientoArbitro::all()
                            ->unique('arbitro_id')
                            
                            
                            // ->orderBy('createdAt', 'desc')
                            // ->count('arbitro_id')
                            ;
        // SELECT arbitro_id,count(id) from enfrentamiento_arbitro group by arbitro_id;
        
        return view('home', compact('enfrentamientos'));
    }
}
