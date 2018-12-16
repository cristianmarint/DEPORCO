<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInscripcionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('inscripcion', function (Blueprint $table) {
            $table->engine='InnoDB';
            $table->increments('id_inscripcion');
            $table->unsignedInteger('id_equipo');
            $table->unsignedInteger('id_torneo');
            $table->boolean('estado')->nullable(false)->default(true);
            $table->timestamps();

            $table->foreign('id_equipo')->references('id_equipo')->on('equipos')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('id_torneo')->references('id_torneo')->on('torneo')
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
        Schema::dropIfExists('inscripcion');
    }
}
