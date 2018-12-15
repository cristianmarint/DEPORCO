<?php

use Illuminate\Database\Seeder;
use App\Torneo;
use App\User;

class TorneoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $cantidadUser    = User::count();
        Torneo::create(array(
           'nombre_torneo' => 'Cotecnova - 1',
            'id_categoria' => 1,
            'id_temporada' => 1,
            'usuario_id'   => rand(1,($cantidadUser)),
        ));
    }
}
