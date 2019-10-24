<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblFormationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_formations', function (Blueprint $table) {
            $table->increments('formt_id');
            $table->string('formt_name');
            $table->string('formt_valide');
            $table->string('formt_time');
            $table->string('formt_of');
            $table->text('formt_contenu');
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
        Schema::dropIfExists('tbl_formations');
    }
}
