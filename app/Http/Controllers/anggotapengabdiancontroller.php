<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\anggotapengabdians;

class anggotapengabdiancontroller extends Controller
{
    public function index()
    {
        return view('anggotapengabdian.createanggota');
    }
}
