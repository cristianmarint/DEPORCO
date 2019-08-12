<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAsistenteInscripcionEquipoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('asistente_inscripcion_equipo', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedInteger('inscripcion_equipo_id')->nullable(false);
            $table->unsignedBigInteger('asistente_id')->nullable(false);
            $table->timestamps();

            
            $table->foreign('inscripcion_equipo_id')->references('id')->on('inscripcion_equipo')
            ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('asistente_id')->references('id')->on('asistente')
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
        Schema::dropIfExists('asistente_inscripcion_equipo');
    }
}
