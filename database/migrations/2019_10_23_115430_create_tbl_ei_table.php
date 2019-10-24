<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblEiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_ei', function (Blueprint $table) {
            $table->increments('ei_id');
            $table->string('ei_name');
            $table->string('ei_adresse');
            $table->string('ei_email');
            $table->string('ei_secteurA');
            $table->string('ei_phone');
            $table->string('ei_nameDi');
            $table->string('ei_eu');
            $table->string('psw');
            $table->string('ei_status');
            $table->string('token');
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
        Schema::dropIfExists('tbl_ei');
    }
}
