<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCalendarioTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('calendario', function (Blueprint $table) {
            $table->engine = "InnoDB";
            $table->increments('id');
            $table->smallInteger('numero_jornada');
            $table->date('fecha');
            $table->unsignedInteger('torneo_id');
            $table->unsignedInteger('avance_id');
            $table->unsignedInteger('user_id');
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('torneo_id')->references('id')->on('torneo')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('avance_id')->references('id')->on('calendario_avance')
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
        Schema::dropIfExists('calendario');
    }
}
