<?php

use App\User;
use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create(array(
            'rol_id' => 1,
            'datos_basicos_id' => \App\DatosBasicos::all()->random()->id,
            'email' => 'superUser@correo.com',
            'password' => bcrypt('superusuario'),
            'remember_token' => str_random(10),
        ));

        User::create(array(
            'rol_id' => 2,
            'datos_basicos_id' => \App\DatosBasicos::all()->random()->id,
            'email' => 'admin@correo.com',
            'password' => bcrypt('admin'),
            'remember_token' => str_random(10),
        ));

        User::create(array(
            'rol_id' => 3,
            'datos_basicos_id' => \App\DatosBasicos::all()->random()->id,
            'email' => 'tester@correo.com',
            'password' => bcrypt('tester'),
            'remember_token' => str_random(10),
        ));

        User::create(array(
            'rol_id' => 1,
            'datos_basicos_id' => \App\DatosBasicos::all()->random()->id,
            'email' => 'someuser@correo.com',
            'password' => bcrypt('somepassword'),
            'remember_token' => str_random(10),
        ));
    }
}
