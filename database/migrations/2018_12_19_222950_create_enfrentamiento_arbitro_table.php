<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEnfrentamientoArbitroTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('enfrentamiento_arbitro', function (Blueprint $table) {
            $table->increments('id_enfretamiento_arbitro');
            $table->unsignedInteger('arbitro_id');
            $table->unsignedInteger('arbitro_puesto_id');
            $table->unsignedInteger('enfrentamiento_id');
            $table->timestamps();

            $table->foreign('arbitro_id')->references('id_arbitro')->on('arbitro')
            ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('arbitro_puesto_id')->references('id_arbitro_puesto')->on('arbitro_puesto')
            ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('enfrentamiento_id')->references('id_enfrentamiento')->on('enfrentamiento')
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
        Schema::dropIfExists('enfretamiento_arbitro');
    }
}
