<?php

namespace App\Http\Controllers;

use App\Models\penelitian;
use App\Models\User;
use App\Models\anggotapenelitians;
use Illuminate\support\Str;
use Illuminate\Http\Request;

class penelitiancontroller extends Controller
{
    public function index()
    {
        $penelitian = penelitian::with('user','anggotapenelitians')->orderBy('id_penelitian','asc')->paginate(5);
        return view('penelitian.penelitian',compact('penelitian'));;
    }
    public function create()
    {
        $user = user::all();
        $anggotapenelitian = anggotapenelitians::all();
        return view('penelitian.createpenelitian',compact('user','anggotapenelitian'));
    }
    public function store(Request $request)
    {
        $validated = $request->validate([
            'skema_penelitian' => 'required',
            'judul_penelitian' => 'required',
            'tahun_penelitian' => 'required',
            'id_user' => 'required'
        ]);

        $penelitian = penelitian::create([
            'skema_penelitian' => $request -> skema_penelitian,
            'judul_penelitian' => $request -> judul_penelitian,
            'tahun_penelitian' => $request -> tahun_penelitian,
            'id_user' => $request -> id_user
        ]);

        $penelitian->anggotapenelitians()->sync($request->id_anggota);
        return redirect('/sipesan/penelitian')->with('toast_success', 'Berhasil Ditambahkan!');;
    }
    public function edit ($id_penelitian)
    {
        $penelitian = penelitian::findorfail($id_penelitian);
        $users = User::all();
        $anggotapenelitian = anggotapenelitians::all();
        return view('penelitian.editpenelitian',compact('penelitian','users','anggotapenelitian'));
    }
    public function update(Request $request, $id_penelitian)
    {
        $penelitian = penelitian::where('id_penelitian',$id_penelitian)->first();

        $validated = $request->validate([
            'skema_penelitian' => 'required',
            'judul_penelitian' => 'required',
            'tahun_penelitian' => 'required',
            'id_user' => 'required'
        ]);

        penelitian::find($id_penelitian)->update([
            'skema_penelitian' => $request -> skema_penelitian,
            'judul_penelitian' => $request -> judul_penelitian,
            'tahun_penelitian' => $request -> tahun_penelitian,
            'id_user' => $request -> id_user
        ]);

        $penelitian->anggotapenelitians()->sync($request->id_anggota);
        return redirect('/sipesan/penelitian')->with('toast_success', 'Data Berhasil Di Ubah!');
    }
    public function destroy(penelitian $penelitianId)
    {
        $penelitianId->delete();
        return redirect('/sipesan/penelitian')->with('toast_success', 'Data Berhasil Di Hapus!');
    }
    public function detail($id_penelitian)
    {
        $penelitian = penelitian::find($id_penelitian);
        //$anggotapenelitian = anggotapenelitians::where('id_anggotapenelitian',$id_penelitian)->first();
        $user = User::get();
        return view('penelitian.detailpenelitian', compact('penelitian','user'));
    }
}
