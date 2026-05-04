<?php

use App\Models\GameMatch;
use App\Models\PlayerMatchStat;
use App\Models\PlayerRegistration;
use Illuminate\Database\Seeder;

class PlayerMatchStatTableSeeder extends Seeder
{
    /**
     * Crea una estadistica por cada combinacion enfrentamiento x jugador inscrito
     * en alguno de los dos equipos del enfrentamiento. Esto permite que las
     * anotaciones y faltas se asignen a estadisticas reales.
     */
    public function run()
    {
        foreach (GameMatch::all() as $match) {
            foreach ([$match->inscripcion_equipo_local_id, $match->inscripcion_equipo_visitante_id] as $teamRegId) {
                $playerRegs = PlayerRegistration::where('inscripcion_equipo_id', $teamRegId)->get();
                foreach ($playerRegs as $pr) {
                    PlayerMatchStat::create([
                        'inscripcion_equipo_id'  => $teamRegId,
                        'inscripcion_jugador_id' => $pr->id,
                        'enfrentamiento_id'      => $match->id,
                        'user_id'                => 1,
                    ]);
                }
            }
        }
    }
}
