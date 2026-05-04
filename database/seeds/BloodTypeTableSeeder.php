<?php

use App\Models\BloodType;
use Illuminate\Database\Seeder;

class BloodTypeTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        BloodType::create(array(
            'tipo' => 'A+'
        ));
        BloodType::create(array(
            'tipo' => 'A-'
        ));
        BloodType::create(array(
            'tipo' => 'B+'
        ));
        BloodType::create(array(
            'tipo' => 'B-'
        ));
        BloodType::create(array(
            'tipo' => 'AB+'
        ));
        BloodType::create(array(
            'tipo' => 'AB-'
        ));
        BloodType::create(array(
            'tipo' => 'O+',
        ));
        BloodType::create(array(
            'tipo' => 'O-'
        ));
    }
}
