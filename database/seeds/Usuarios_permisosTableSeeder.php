<?php

use Illuminate\Database\Seeder;

class Usuarios_permisosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('usuarios_permisos')->insert([
            'users_id'=>3,
            'permiso_id'=>2
        ]);
    }
}
