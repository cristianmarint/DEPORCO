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
            $table->increments('id_enfrentamiento');
            $table->unsignedInteger('calendario_id');
            $table->unsignedInteger('inscripcion_equipo_local_id');
            $table->unsignedInteger('inscripcion_equipo_visitante_id');
            $table->unsignedInteger('lugar_id');
            $table->unsignedInteger('usuario_id');
            $table->timestamps();

            $table->foreign('calendario_id')->references('id_calendario')->on('calendario')
                  ->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('inscripcion_equipo_local_id')->references('id_inscripcion')->on('inscripcion')
                  ->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('inscripcion_equipo_visitante_id')->references('id_inscripcion')->on('inscripcion')
                  ->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('lugar_id')->references('id_lugar')->on('lugar')
                  ->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('usuario_id')->references('id')->on('users')
                  ->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
      // Schema::table('enfrentamiento',function(Blueprint $table){
      //       $table->dropForeign(['calendario_id']);
      //       $table->dropColumn('calendario_id');

      //       $table->dropForeign(['inscripcion_equipo_local_id']);
      //       $table->dropColumn('inscripcion_equipo_local_id');

      //       $table->dropForeign(['inscripcion_equipo_visitante_id']);
      //       $table->dropColumn('inscripcion_equipo_visitante_id');

      //       $table->dropForeign(['lugar_id']);
      //       $table->dropColumn('lugar_id');
            
      //       $table->dropForeign(['usuario_id']);
      //       $table->dropColumn('usuario_id');
      //   });
        Schema::dropIfExists('enfrentamiento');
      //   Schema::drop('enfrentamiento');
    }
}
