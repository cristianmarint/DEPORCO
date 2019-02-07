<?php

use App\Models\Eps;
use Illuminate\Database\Seeder;

class EpsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Eps::class,10)->create();
    }
}
