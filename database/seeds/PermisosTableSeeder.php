<?php

use App\Permisos;
use Illuminate\Database\Seeder;

class PermisosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Permisos::create(array(
            'permisos' => 'Ver',
            'descripcion' => 'Obtener informacion sobre las competencias'
        ));

        Permisos::create(array(
            'permisos' => 'Crear',
            'descripcion' => 'Agregar nuevos datos'
        ));

        Permisos::create(array(
            'permisos' => 'Editar',
            'descripcion' => 'Modificar los datos'
        ));

        Permisos::create(array(
            'permisos' => 'Eliminar',
            'descripcion' => 'Eliminar los datos'
        ));
    }
}
