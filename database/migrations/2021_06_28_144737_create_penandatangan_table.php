<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePenandatanganTabel extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('penandatangan', function (Blueprint $table) {
            $table->integer('id_penandatangan')->autoIncrement();
            $table->string('nama_penandatangan', 100);
            $table->string('nip_penandatangan', 32)->nullable();
            $table->string('jabatan', 255)->nullable();
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
        Schema::dropIfExists('penandatangan_tabel');
    }
}
