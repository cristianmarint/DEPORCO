<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateResultadoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('resultado', function (Blueprint $table){
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->unsignedInteger('enfrentamiento_id');
            $table->smallInteger('resultado_local')->default('0')->nullable(true);
            $table->smallInteger('resultado_visitante')->default('0')->nullable(true);
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('enfrentamiento_id')->references('id')->on('enfrentamiento')
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
        Schema::dropIfExists('resultado');
    }
}
