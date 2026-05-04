<?php

use App\Models\EducationType;
use Illuminate\Database\Seeder;

class TipoEducacionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        EducationType::create(array(
           'tipo' => 'Privado'
        ));

        EducationType::create(array(
            'tipo' => 'Publico'
        ));

        EducationType::create(array(
            'tipo' => 'Otro'
        ));
    }
}
