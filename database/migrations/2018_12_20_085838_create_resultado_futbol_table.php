<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateResultadoFutbolTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('resultado_futbol', function (Blueprint $table) {
            $table->increments('id_resultado_futbol');
            $table->unsignedInteger('enfrentamiento_id');
            $table->Integer('resultado_local')->nullable(false)->default(0);
            $table->Integer('resultado_visitante')->nullable(false)->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('resultado_futbol');
    }
}
