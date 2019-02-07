<?php

use App\Tantos;
use Illuminate\Database\Seeder;

class TantosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Tantos::class, 100)->create();
    }
}
