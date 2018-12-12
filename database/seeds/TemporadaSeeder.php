<?php

use Illuminate\Database\Seeder;
use App\Temporada;

class TemporadaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Temporada::create(array(
           'numero_temporada' => '2019-1',
            'descripcion' => 'primera temporada del año 2019',
            'fecha_inicio' => '2019-03-15',
            'fecha_fin' => '2019-05-10'
        ));
    }
}
