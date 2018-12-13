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
            $table->string('nit',12)->nullable(false);
            $table->string('nombre',60)->nullable(false);
            $table->string('administradora',150)->nullable(false);
            $table->enum('tipo',['ARL','AFP','EPS','PARAFISCAL'])->nullable(false);
            $table->string('codigo',10)->nullable(false);
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
