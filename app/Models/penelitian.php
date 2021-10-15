<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class penelitian extends Model
{
    use SoftDeletes;
    protected $primaryKey = 'id_penelitian';
    protected $table = 'penelitian';
    protected $guarded = ['id_penelitian'];

    public function user()
    {
        return $this->belongsTo(User::class, 'id_user');
    }
    public function anggotapenelitians()
    {
        return $this->belongsToMany(anggotapenelitians::class, 'penelitiananggota');
    }
    public function suratpenelitian()
    {
        return $this->hasMany(suratpenelitians::class, 'id_srtpenelitian');
    }
}
