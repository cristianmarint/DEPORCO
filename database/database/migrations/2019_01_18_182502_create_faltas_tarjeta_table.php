<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFaltasTarjetaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('faltas_tarjeta', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('faltas_id');
            $table->unsignedInteger('tarjetas_id');
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('faltas_id')->references('id')->on('faltas')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('tarjetas_id')->references('id')->on('tarjetas')
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
        Schema::dropIfExists('faltas_tarjeta');
    }
}
