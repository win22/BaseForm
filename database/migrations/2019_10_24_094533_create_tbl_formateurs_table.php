<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblFormateursTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_formateurs', function (Blueprint $table) {
            $table->increments('form_id');
            $table->string('form_name');
            $table->string('form_prenom');
            $table->string('form_adresse');
            $table->string('form_of');
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
        Schema::dropIfExists('tbl_formateurs');
    }
}
