<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateArbitroTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('arbitro', function (Blueprint $table) {
            $table->increments('id_arbitro');
            $table->unsignedInteger('datos_basicos_id');
            $table->timestamps();

            $table->foreign('datos_basicos_id')->references('id_datos_basicos')->on('datos_basicos')
                  ->onUpdate('cascade')->onDelete('restrict');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('arbitro');
    }
}
