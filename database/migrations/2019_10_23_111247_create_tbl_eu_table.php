<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblEuTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_eu', function (Blueprint $table) {
            $table->increments('eu_id');
            $table->string('eu_name');
            $table->string('eu_adresse');
            $table->string('eu_email');
            $table->string('eu_secteurA');
            $table->string('eu_efectif');
            $table->string('eu_phone');
            $table->string('eu_chifreA');
            $table->string('eu_contactDe');
            $table->string('eu_nameDi');
            $table->string('eu_ei');
            $table->string('psw');
            $table->string('eu_status');
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
        Schema::dropIfExists('tbl_eu');
    }
}
