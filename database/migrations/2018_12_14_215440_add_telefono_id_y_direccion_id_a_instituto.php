<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddTelefonoIdYDireccionIdAInstituto extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('institutos',function(Blueprint $table){
            $table->unsignedInteger('telefono_id')->nullable()->after('tipo_educacion');
            $table->unsignedInteger('direccion_id')->nullable()->after('telefono_id');
            
            $table->foreign('telefono_id')->references('id_telefono')->on('telefono')
            ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('direccion_id')->references('id_direccion')->on('direccion')
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
        Schema::table('institutos',function(Blueprint $table){
            $table->dropForeign(['telefono_id']);
            $table->dropColumn('telefono_id');
            $table->dropForeign(['direccion_id']);
            $table->dropColumn('direccion_id');
        });
    }
}
