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
        // User::create(array(
        //     // 'role_id' => 1,
        //     'datos_basicos_id' => 1,
        //     'email' => 'cristianmarint@cotecnova.edu.co',
        //     'password' => bcrypt('123'),
        //     'remember_token' => str_random(10),
        // ));

        // User::create(array(
        //     // 'role_id' => 1,
        //     'datos_basicos_id' => 2,
        //     'email' => 'edwin.lopezb.1297@cotecnova.edu.co',
        //     'password' => bcrypt('123'),
        //     'remember_token' => str_random(10),
        // ));

        DB::table('users')->insert([
            'role_id' => '1',
            'datos_basicos_id' => '1',
            'email' => 'cristianmarint@gmail.com',
            'avatar' => 'https://dr.savee-cdn.com/things/5/c/335a4b19659d1f744f1917.jpg',
            'password' => bcrypt('123'),
        ]);

        DB::table('users')->insert([
            'role_id' => '1',
            'datos_basicos_id' => '2',
            'email' => 'edwin.lopezb.1297@cotecnova.edu.co',
            'avatar' => 'https://dr.savee-cdn.com/things/5/a/94a2f75d33623a43766584.jpg',
            'password' => bcrypt('123'),
        ]);

    }
}
