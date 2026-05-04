<?php

use App\Models\MatchReferee;
use Illuminate\Database\Seeder;

class EnfrentamientoArbitroTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(MatchReferee::class, 15)->create();
    }
}
