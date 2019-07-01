<?php

use App\Models\DatosBasicos;
use Illuminate\Database\Seeder;
use Faker\Generator as Faker;

class DatosBasicosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DatosBasicos::create(array(
            'cedula' => '1112112112',
            'foto'   => 'https://avatars1.githubusercontent.com/u/31068007',
            'primer_nombre' => 'Cristian',
            'segundo_nombre' => 'Alexander',
            'primer_apellido' => 'Marín',
            'segundo_apellido' => 'Aguirre',
            'tipo_sangre_id' => \App\Models\TipoSangre::all()->random()->id,
            'municipio_id' => \App\Models\Municipio::all()->random()->id,
            'genero_id' => 1,
            'direccion_id' => \App\Models\Direccion::all()->random()->id,
            'eps_id' => \App\Models\Eps::all()->random()->id,
            'email' => 'cristianmarint@cotecnova.edu.co',
            // 'user_id' => 2
        ));
        
        DatosBasicos::create(array(
            'cedula' => '222111222',
            'primer_nombre' => 'Edwin',
            'primer_apellido' => 'Lopez',
            'tipo_sangre_id' => \App\Models\TipoSangre::all()->random()->id,
            'municipio_id' => \App\Models\Municipio::all()->random()->id,
            'genero_id' => 1,
            'direccion_id' => \App\Models\Direccion::all()->random()->id,
            'eps_id' => \App\Models\Eps::all()->random()->id,
            'email' => 'edwin.lopezb.1297@cotecnova.edu.co',
            // 'user_id' => 2
        ));
        
        factory(DatosBasicos::class, 100)->create();
        
    }
}
