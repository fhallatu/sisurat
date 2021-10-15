<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\anggotapenelitians;

class anggotapenelitiancontroller extends Controller
{
    public function index()
    {
        return view('anggotapenelitian.createanggota');
    }
}
