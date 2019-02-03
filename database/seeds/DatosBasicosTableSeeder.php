<?php

use App\DatosBasicos;
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
            'foto' => 'http://lorempixel.com/800/800/people/',
            'telefono_id' => \App\Telefono::all()->random()->id,
            'primer_nombre' => 'Cristian',
            'segundo_nombre' => 'Alexander',
            'primer_apellido' => 'Marín',
            'segundo_apellido' => 'Aguirre',
            'tipo_sangre_id' => \App\TipoSangre::all()->random()->id,
            'municipio_id' => \App\Municipio::all()->random()->id,
            'genero_id' => 1,
            'direccion_id' => \App\Direccion::all()->random()->id,
            'eps_id' => \App\Eps::all()->random()->id,
            'email' => 'cristianmarint@cotecnova.edu.co',
        ));
        
        DatosBasicos::create(array(
            'cedula' => '222111222',
            'foto' => 'http://lorempixel.com/800/800/people/',
            'telefono_id' => \App\Telefono::all()->random()->id,
            'primer_nombre' => 'Edwin',
            'primer_apellido' => 'Lopez',
            'tipo_sangre_id' => \App\TipoSangre::all()->random()->id,
            'municipio_id' => \App\Municipio::all()->random()->id,
            'genero_id' => 1,
            'direccion_id' => \App\Direccion::all()->random()->id,
            'eps_id' => \App\Eps::all()->random()->id,
            'email' => 'edwin.lopezb.1297@cotecnova.edu.co',
        ));
        
        factory(DatosBasicos::class, 100)->create();

    }
}
