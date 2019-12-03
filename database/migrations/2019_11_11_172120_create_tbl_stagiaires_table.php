<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblStagiairesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_stagiaires', function (Blueprint $table) {
            $table->increments('stag_id');
            $table->string('stag_name', 90);
            $table->string('stag_prenom', 90);
            $table->string('stag_email', 190);
            $table->string('stag_adresse',90);
            $table->string('stag_phone', 90);
            $table->string('stag_structure', 90);
            $table->string('stag_formation', 90);
            $table->string('stag_formateur', 90);
            $table->string('stag_sexe', 2);
            $table->string('stag_date_debu', 90);
            $table->string('stag_date_fin', 90);
            $table->string('stag_status', 2)->nullable();
            $table->string('stag_validation', 30)->nullable();
            $table->string('stag_image', 30);
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
        Schema::dropIfExists('tbl_stagiaires');
    }
}
