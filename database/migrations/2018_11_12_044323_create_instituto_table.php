<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInstitutoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('institutos', function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('id_instituto');
            $table->string('nombre_institucion', 150);
            $table->unsignedInteger('usuario_id');
            $table->unsignedInteger('municipio_id');
            $table->enum('tipo_educacion', ['publico', 'privado']);
            $table->string('codigo_dane', 50);
            $table->string('nit', 20);
            $table->string('logo',150)->default('img/institutos/default.png');
            $table->tinyInteger('estado')->default(1);
            $table->timestamps();

            $table->foreign('usuario_id')->references('id')->on('users')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('municipio_id')->references('id_municipio')->on('municipios')
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
        Schema::dropIfExists('institutos');
    }
}
