<?php

use Illuminate\Database\Seeder;
use App\Municipio;

class MunicipioTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Municipio::class, 10)->create();
    }
}
