<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInscripcionEquipoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('inscripcion_equipo', function (Blueprint $table) {
            $table->engine = "InnoDB";
            $table->increments('id');
            $table->unsignedInteger('equipo_id');
            $table->unsignedInteger('torneo_id');
            $table->smallInteger('puntos')->default(0);
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('equipo_id')->references('id')->on('equipo')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('torneo_id')->references('id')->on('torneo')
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
        Schema::dropIfExists('inscripcion_equipo');
    }
}
