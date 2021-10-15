<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePenelitianTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('penelitian', function (Blueprint $table) {
            $table->integer('id_penelitian')->autoIncrement();
            $table->integer('id_user');
            $table->integer('tahun_penelitian');
            $table->string('skema_penelitian', 255);
            $table->string('judul_penelitian', 255);
            $table->timestamps();
            $table->softDeletes('deleted_at', 0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('penelitian');
    }
}
