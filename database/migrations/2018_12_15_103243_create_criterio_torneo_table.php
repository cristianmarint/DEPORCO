<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCriterioTorneoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('criterio_torneo', function (Blueprint $table) {
            $table->increments('id_criterio_torneo');
            $table->unsignedInteger('criterio_id')->nullable(false);
            $table->unsignedInteger('torneo_id')->nullable(false);


            $table->foreign('criterio_id')->references('id_criterio')->on('criterio')
                  ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('torneo_id')->references('id_torneo')->on('torneo')
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
        Schema::dropIfExists('criterio_torneo');
    }
}
