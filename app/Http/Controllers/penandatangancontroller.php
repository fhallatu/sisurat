<?php

namespace App\Http\Controllers;

use App\Models\penandatangan;
use Illuminate\support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class penandatangancontroller extends Controller
{
    public function create()
    {
        return view('penandatangan');
    }
    public function store(Request $request)
    {
        $validated = $request->validate([
            'nama_penandatangan' => 'required',
            'nip_penandatangan' => 'required',
            'jabatan' => 'nullable',
        ]);

        $penandatangan = penandatangan::create([
                    'nama_penandatangan' => $request -> nama_penandatangan,
                    'nip_penandatangan' => $request -> nip_penandatangan,
                    'jabatan' => $request -> jabatan,
                ]);
    return redirect('/sipesan/dashboard')->with('toast_success', 'Data Berhasil Ditambahkan!');
    }
}

