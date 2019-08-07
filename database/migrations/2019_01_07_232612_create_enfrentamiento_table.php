<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEnfrentamientoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('enfrentamiento', function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->unsignedInteger('calendario_id')->nullable(false);
            $table->unsignedInteger('inscripcion_equipo_visitante_id')->nullable(false);
            $table->unsignedInteger('inscripcion_equipo_local_id')->nullable(false);
            $table->unsignedInteger('lugar_id')->nullable()->default(null);
            $table->unsignedInteger('user_id');
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('calendario_id')->references('id')->on('calendario')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('inscripcion_equipo_visitante_id')->references('id')->on('inscripcion_equipo')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('inscripcion_equipo_local_id')->references('id')->on('inscripcion_equipo')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('lugar_id')->references('id')->on('lugar')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('user_id')->references('id')->on('users')
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
        Schema::dropIfExists('enfrentamiento');
    }
}
