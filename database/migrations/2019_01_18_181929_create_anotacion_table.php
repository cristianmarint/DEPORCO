<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAnotacionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('anotacion', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('estadistica_id')->nullable(false);
            $table->unsignedInteger('tiempo_enfrentamiento_id')->nullable(false);
            $table->unsignedInteger('user_id');
            $table->time('minuto')->nullable(false);
            $table->tinyInteger('anotacion')->default('1')->nullable();
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('estadistica_id')->references('id')->on('estadistica')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('tiempo_enfrentamiento_id')->references('id')->on('tiempo_enfrentamiento')
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
        Schema::dropIfExists('anotacion');
    }
}
