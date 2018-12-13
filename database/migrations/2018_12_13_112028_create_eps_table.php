<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEpsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('eps', function (Blueprint $table) {
            $table->engine='InnoDB';
            $table->increments('id_eps');
            $table->string('nit',12);
            $table->string('nombre',60);
            $table->string('administradora',150);
            $table->enum('tipo',['ARL','AFP','EPS','PARAFISCAL']);
            $table->string('codigo',10);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('eps');
    }
}
