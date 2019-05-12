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
            'foto'   => 'https://scontent.feoh1-1.fna.fbcdn.net/v/t1.0-9/49172795_2032340176848073_3607797267651624960_o.jpg?_nc_cat=111&_nc_ht=scontent.feoh1-1.fna&oh=a7ece5939eec56f6a52b8fe4c6463b81&oe=5CEE3D6C',
            // 'telefono_id' => \App\Models\Telefono::all()->random()->id,
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
            // 'telefono_id' => \App\Models\Telefono::all()->random()->id,
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
        
        // factory(DatosBasicos::class, 100)->create();
        
    }
}
