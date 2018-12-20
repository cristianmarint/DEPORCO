<?php
use Illuminate\Database\Seeder;
use App\Lugar;

class LugarTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Lugar::class,20)->create();
    }
}
