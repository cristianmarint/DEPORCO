<?php

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
        DB::table('permisos')->insert([
            'permiso' => 'create',
            'descripcion' => 'Este permiso tolera que el usuario poseedor crear informacion/registros',
            ]);
        DB::table('permisos')->insert([
            'permiso' => 'read',
            'descripcion' => 'Este permiso tolera que el usuario poseedor ver informacion/registros',
            ]);
        DB::table('permisos')->insert([
            'permiso' => 'update',
            'descripcion' => 'Este permiso tolera que el usuario poseedor actualizar informacion/registros',
            ]);
        DB::table('permisos')->insert([
            'permiso' => 'delete',
            'descripcion' => 'Este permiso tolera que el usuario poseedor eliminar informacion/registros',
            ]);
        DB::table('permisos')->insert([
            'permiso' => 'estado',
            'descripcion' => 'Este permiso tolera que el usuario poseedor modifique el estado informacion/registros',
            ]);
    }
}
