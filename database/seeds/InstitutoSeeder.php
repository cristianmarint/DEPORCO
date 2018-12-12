<?php

use App\Instituto;
use Illuminate\Database\Seeder;

class InstitutoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Instituto::create(array(
           'nit' => str_random(10),
            'codigo_dane' => str_random(10),
            'nombre_institucion' => 'Institucion 1',
            'id_municipio' => rand(1,10),
            'tipo_educacion' => 1,
            'direccion' => 'Cra 1 #12-34',
            'telefono' => '2152050'
        ));

        Instituto::create(array(
            'nit' => str_random(10),
            'codigo_dane' => str_random(10),
            'nombre_institucion' => 'Institucion 2',
            'id_municipio' => rand(1,10),
            'tipo_educacion' => 2,
            'direccion' => 'Cra 5 #7-20',
            'telefono' => '2183020'
        ));

        Instituto::create(array(
            'nit' => str_random(10),
            'codigo_dane' => str_random(10),
            'nombre_institucion' => 'Institucion 3',
            'id_municipio' => rand(1,10),
            'tipo_educacion' => 1,
            'direccion' => 'Cra 15 #10-5',
            'telefono' => '4759040'
        ));
    }
}
