<?php

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
        DB::table('roles')->insert([
            'rol' => 'administrador',
            'descripcion' => 'Este rol permite que el usuario poseedor realizar CRUD sobre informacion/registros
                              En donde D puede ser cambio de estado o borrado permanente.',
            ]);
        DB::table('roles')->insert([
            'rol' => 'Encargado',
            'descripcion' => 'Este rol permite que el usuario poseedor realizar CRUD sobre informacion/registros,
                              En donde D será un cambio de estado.',
            ]);
        DB::table('roles')->insert([
            'rol' => 'Asistente',
            'descripcion' => 'Este rol permite que el usuario poseedor realizar CR sobre informacion/registros',
            ]);
    }
}
