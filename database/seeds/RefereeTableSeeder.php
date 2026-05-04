<?php

use App\Models\Referee;
use Illuminate\Database\Seeder;

class RefereeTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Referee::class, 10)->create();
    }
}
