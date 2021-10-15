<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\support\Str;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user', function (Blueprint $table) 
        {
            $table->integer('id_user')->autoIncrement();
            $table->string('nama_user', 100);
            $table->char('nip_user', 32)->nullable();
            $table->char('nidn_user', 32)->nullable();
            $table->string('email_user', 100);
            $table->string('no_hp_user', 35)->nullable();
            $table->string('alamat_user', 100)->nullable();
            $table->date('tgl_lahir_user')->nullable();
            $table->enum('jenis_kelamin_user', ['L', 'P']);
            $table->string('prodi_user', 100);
            $table->string('fakultas_user', 100);
            $table->enum('hak_akses', ['dosen', 'staff', 'admin'])->default('dosen');
            $table->string('foto_profil')->nullable();
            $table->string('password', 255)->nullable()->default(bcrypt('password'));
            $table->enum('status', ['nonaktif', 'pending', 'aktifn'])->default('nonaktif');
            $table->rememberToken()->default(Str::random(60));
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
        Schema::dropIfExists('users');
    }
}
