<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class anggotapenelitians extends Model
{
    use SoftDeletes;
    protected $primaryKey = 'id_anggota';
    protected $table = 'anggotapenelitian';
    protected $fillable = ['nama_anggota', 'no_identitas', 'prodi_anggota', 'fakultas_anggota'];

    public function penelitian()
    {
        return $this->belongsToMany(penelitian::class, 'penelitiananggota');
    }
}
