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
            $table->string('nit', 20);
            $table->string('codigo_dane', 50);
            $table->string('nombre_institucion', 150);
            $table->string('logo',150)->default('img/institutos/default.png');
            $table->unsignedInteger('id_municipio');
            $table->tinyInteger('estado')->default(1);
            $table->enum('tipo_educacion', ['publico', 'privado']);
            $table->string('direccion', 80);
            $table->string('telefono', 20);
            $table->timestamps();

            $table->foreign('id_municipio')->references('id_municipio')->on('municipios')
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
