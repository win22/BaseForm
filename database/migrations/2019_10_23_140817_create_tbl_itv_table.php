<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblItvTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_itv', function (Blueprint $table) {
            $table->increments('itv_id');
            $table->string('itv_code');
            $table->string('itv_numsec');
            $table->string('itv_name');
            $table->string('itv_prenom');
            $table->string('itv_sex');
            $table->string('itv_date_naiss');
            $table->string('itv_Lieu_naiss');
            $table->string('itv_ei');
            $table->string('itv_image');
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
        Schema::dropIfExists('tbl_itv');
    }
}
