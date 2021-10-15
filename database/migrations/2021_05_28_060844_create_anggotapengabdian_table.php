<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAnggotapengabdianTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('anggotapengabdian', function (Blueprint $table) {
            $table->integer('id_anggota')->autoIncrement();
            $table->string('nama_anggota', 100)->nullable();
            $table->char('no_identitas', 32)->nullable();
            $table->string('prodi_anggota', 100)->nullable();;
            $table->string('fakultas_anggota', 100)->nullable();;
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
        Schema::dropIfExists('anggotapengabdian');
    }
}
