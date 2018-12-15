<?php

use App\Criterio;
use Illuminate\Database\Seeder;

class Criterio_torneoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('criterio_torneo')->insert([
            'criterio_id'   => 1,
            'torneo_id' => 1,
            ]);
    }
}
