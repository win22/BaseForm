<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblOfTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_of', function (Blueprint $table) {
            $table->increments('of_id');
            $table->string('of_raison');
            $table->string('of_adresse');
            $table->string('of_email');
            $table->string('of_phone');
            $table->string('of_formation');
            $table->string('of_password');
            $table->string('of_status');
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
        Schema::dropIfExists('tbl_of');
    }
}
