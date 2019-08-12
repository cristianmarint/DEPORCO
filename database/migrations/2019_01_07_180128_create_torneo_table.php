<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTorneoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('torneo', function (Blueprint $table) {
            $table->engine = "InnoDB";
            $table->increments('id');
            $table->string('nombre', 50)->nullable(false);
            $table->text('descripcion')->nullable()->default(NULL);
            $table->decimal('costo_inscripcion', 8, 2)->default(0)->nullable();
            $table->unsignedInteger('temporada_id');
            $table->unsignedInteger('categoria_id');
            $table->unsignedInteger('user_id');
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('temporada_id')->references('id')->on('temporada')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('categoria_id')->references('id')->on('categoria')
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
        Schema::dropIfExists('torneo');
    }
}
