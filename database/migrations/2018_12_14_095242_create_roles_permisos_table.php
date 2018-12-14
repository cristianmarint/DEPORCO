<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRolesPermisosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('roles_permisos', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('rol_id')->nullable(false);
            $table->unsignedInteger('permiso_id')->nullable(false);
            $table->timestamps();


            $table->foreign('rol_id')->references('id_rol')->on('roles')
                  ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('permiso_id')->references('id_permiso')->on('permisos')
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
        Schema::dropIfExists('roles_permisos');
    }
}
