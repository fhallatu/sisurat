<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;


class user extends Authenticatable
{
    use SoftDeletes;
    protected $primaryKey = 'id_user';
    public $table = 'user';
    protected $guarded = ['id_user'];
    protected $fillable = ['nama_user','nip_user','nidn_user','email_user',
    'no_hp_user','alamat_user','tgl_lahir_user','jenis_kelamin_user','prodi_user','fakultas_user','hak_akses','foto_profil','password','status','remember_token'];

    protected $hidden = ['password','remember_token'];

    public function penelitian()
    {
        return $this->hasMany(penelitian::class, 'id_penelitian');
    }
    public function suratpenelitian()
    {
        return $this->hasMany(suratpenelitians::class, 'id_srtpenelitian');
    }
    public function pengabdian()
    {
        return $this->hasMany(pengabdian::class, 'id_pengabdian');
    }
    public function suratpengabdian()
    {
        return $this->hasMany(suratpengabdians::class, 'id_srtpengabdian');
    }
}
