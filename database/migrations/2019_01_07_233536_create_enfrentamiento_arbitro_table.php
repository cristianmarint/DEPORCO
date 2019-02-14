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
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->unsignedInteger('arbitro_id');
            $table->unsignedInteger('arbitro_puesto_id');
            $table->unsignedInteger('enfrentamiento_id');
            $table->unsignedInteger('user_id');
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('arbitro_id')->references('id')->on('arbitro')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('arbitro_puesto_id')->references('id')->on('arbitro_puesto')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('enfrentamiento_id')->references('id')->on('enfrentamiento')
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
        Schema::dropIfExists('enfrentamiento_arbitro');
    }
}
