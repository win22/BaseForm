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
            $table->string('formt_name' , 100);
            $table->string('formt_time', 60);
            $table->string('formt_type', 30);
            $table->text('formt_contenu');
            $table->text('formt_structure', 90)->nullable();
            $table->string('formt_file', 100);
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
        Schema::dropIfExists('tbl_formations');
    }
}
