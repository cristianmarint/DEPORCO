<?php

use Illuminate\Database\Seeder;

class Roles_permisosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Administrador
        DB::table('roles_permisos')->insert([
            'rol_id'     => 1,
            'permiso_id' => 1,
            ]);
        DB::table('roles_permisos')->insert([
            'rol_id'     => 1,
            'permiso_id' => 2,
            ]);
        DB::table('roles_permisos')->insert([
            'rol_id'     => 1,
            'permiso_id' => 3,
            ]);
        DB::table('roles_permisos')->insert([
            'rol_id'     => 1,
            'permiso_id' => 4,
            ]);
        // Encargado
        DB::table('roles_permisos')->insert([
            'rol_id'     => 2,
            'permiso_id' => 1,
            ]);
        DB::table('roles_permisos')->insert([
            'rol_id'     => 2,
            'permiso_id' => 2,
            ]);
        DB::table('roles_permisos')->insert([
            'rol_id'     => 2,
            'permiso_id' => 3,
            ]);
        DB::table('roles_permisos')->insert([
            'rol_id'     => 2,
            'permiso_id' => 5,
            ]);
        // Asistente
        DB::table('roles_permisos')->insert([
            'rol_id'     => 3,
            'permiso_id' => 1,
            ]);
        DB::table('roles_permisos')->insert([
            'rol_id'     => 3,
            'permiso_id' => 2,
            ]);
    }
}
