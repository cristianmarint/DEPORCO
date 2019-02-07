<?php

use App\Models\RolesPermisos;
use Illuminate\Database\Seeder;

class RolesPermisosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        RolesPermisos::create(array(
            'rol_id' => '1',
            'permisos_id' => '1'
        ));

        RolesPermisos::create(array(
            'rol_id' => '1',
            'permisos_id' => '2'
        ));

        RolesPermisos::create(array(
            'rol_id' => '1',
            'permisos_id' => '3'
        ));

        RolesPermisos::create(array(
            'rol_id' => '1',
            'permisos_id' => '4'
        ));

        RolesPermisos::create(array(
            'rol_id' => '2',
            'permisos_id' => '1'
        ));

        RolesPermisos::create(array(
            'rol_id' => '2',
            'permisos_id' => '2'
        ));

        RolesPermisos::create(array(
            'rol_id' => '2',
            'permisos_id' => '3'
        ));

        RolesPermisos::create(array(
            'rol_id' => '2',
            'permisos_id' => '4'
        ));

        RolesPermisos::create(array(
            'rol_id' => '3',
            'permisos_id' => '1'
        ));

        RolesPermisos::create(array(
            'rol_id' => '3',
            'permisos_id' => '2'
        ));

        RolesPermisos::create(array(
            'rol_id' => '4',
            'permisos_id' => '1'
        ));
    }
}
