<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class penandatangan extends Model
{
    use SoftDeletes;
    protected $primaryKey = 'id_penandatangan';
    protected $table = 'penandatangan';
    protected $guarded = ['id_penandatangan'];

    public function suratpenelitian()
    {
        return $this->hasMany(suratpenelitians::class, 'id_srtpenelitian');
    }
    public function suratpengabdian()
    {
        return $this->hasMany(suratpengabdians::class, 'id_srtpengabdian');
    }
}