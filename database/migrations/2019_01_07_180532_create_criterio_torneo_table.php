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
            $table->engine = "InnoDB";
            $table->increments('id');
            $table->unsignedInteger('criterio_id');
            $table->unsignedInteger('torneo_id');
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('criterio_id')->references('id')->on('criterio')
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
        Schema::dropIfExists('criterio_torneo');
    }
}
