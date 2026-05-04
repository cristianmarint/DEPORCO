<?php

use App\Models\GameMatch;
use App\Models\Schedule;
use App\Models\TeamRegistration;
use App\Models\Venue;
use Illuminate\Database\Seeder;

class GameMatchTableSeeder extends Seeder
{
    /**
     * Crea enfrentamientos por cada calendario, eligiendo dos equipos
     * inscritos al mismo torneo (local y visitante distintos).
     */
    public function run()
    {
        $venueIds = Venue::pluck('id')->all();
        if (empty($venueIds)) {
            return;
        }

        foreach (Schedule::all() as $schedule) {
            $registrations = TeamRegistration::where('torneo_id', $schedule->torneo_id)
                ->inRandomOrder()
                ->limit(2)
                ->get();

            if ($registrations->count() < 2) {
                continue;
            }

            GameMatch::create([
                'calendario_id'                  => $schedule->id,
                'inscripcion_equipo_local_id'    => $registrations[0]->id,
                'inscripcion_equipo_visitante_id'=> $registrations[1]->id,
                'lugar_id'                       => $venueIds[array_rand($venueIds)],
                'user_id'                        => 1,
            ]);
        }
    }
}
