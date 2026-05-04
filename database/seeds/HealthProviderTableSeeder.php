<?php

use App\Models\HealthProvider;
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
        factory(HealthProvider::class,10)->create();
    }
}
