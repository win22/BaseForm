<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblIntervenantsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_intervenants', function (Blueprint $table) {
            $table->increments('itv_id');
            $table->string('itv_code', 60);
            $table->string('itv_numsec', 60);
            $table->string('itv_name', 60);
            $table->string('itv_prenom', 60);
            $table->string('itv_sex', 1);
            $table->string('itv_date_naiss', 60);
            $table->string('itv_Lieu_naiss', 60);
            $table->string('itv_status', 1);
            $table->string('itv_ei', 90)->nullable();
            $table->string('itv_image');
            $table->timestamp('created_at')->default(\DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('updated_at')->default(\DB::raw('CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'));
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_intervenants');
    }
}
