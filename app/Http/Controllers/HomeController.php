<?php

namespace App\Http\Controllers;
use App\Models\Torneo;

use Illuminate\Http\Request;
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

        $torneos = DB::select('SELECT 
                                -- b.id,
                                f.nombre AS nombre_local,
                                c.resultado_local , 
                                h.nombre AS nombre_visitante,
                                c.resultado_visitante,

                                fa.nombre AS fase
                                  
                                FROM torneo 

                                INNER JOIN inscripcion_equipo AS a ON torneo.id = a.torneo_id 
                                
                                INNER JOIN enfrentamiento AS b ON a.equipo_id   = b.inscripcion_equipo_local_id 
                                RIGHT JOIN calendario AS ca ON b.calendario_id  = ca.id
                                INNER JOIN fase AS fa ON ca.fase_id = fa.id    
                                
                                INNER JOIN resultado AS c ON b.id = c.enfrentamiento_id 
                                
                                RIGHT JOIN inscripcion_equipo AS e ON b.inscripcion_equipo_local_id = e.equipo_id AND e.torneo_id = a.torneo_id 
                                RIGHT JOIN equipo AS f ON e.equipo_id = f.id 
                                
                                LEFT JOIN inscripcion_equipo AS g ON b.inscripcion_equipo_visitante_id = g.equipo_id AND e.torneo_id = a.torneo_id 
                                LEFT JOIN equipo AS h ON g.equipo_id  = h.id 

                                WHERE torneo.id ='.$id
                             );
        return response()->json($torneos);
    }
}
