<?php

Use App\Roles;
use Illuminate\Database\Seeder;

class RolesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Roles::create(array(
            'rol' => 'Administrador',
            'descripcion' => 'super usuario'
        ));

        Roles::create(array(
            'rol' => 'Usuario',
            'descripcion' => 'crear, editar, ver y eliminar datos'
        ));

        Roles::create(array(
            'rol' => 'tester',
            'descripcion' => 'ingresar informacion'
        ));

        Roles::create(array(
            'rol' => 'basico',
            'descripcion' => 'ver informacion'
        ));
    }
}
