<?php

namespace App\Http\Controllers;
use App\Models\pengabdian;
use App\Models\User;
use App\Models\anggotapengabdians;
use Illuminate\Http\Request;

class pengabdiancontroller extends Controller
{
    public function index()
    {
        $pengabdian = pengabdian::with('user','anggotapengabdians')->orderBy('id_pengabdian','asc')->paginate(5);
        return view('pengabdian.pengabdian',compact('pengabdian'));
    }
    public function create()
    {
        $user = User::all();
        $anggotapengabdian = anggotapengabdians::all();
        return view('pengabdian.createpengabdian',compact('user','anggotapengabdian'));
    }
    public function store(Request $request)
    {
        $validated = $request->validate([
            'skema_pengabdian' => 'required',
            'judul_pengabdian' => 'required',
            'id_user' => 'required'
        ]);

        $pengabdian = pengabdian::create([
            'skema_pengabdian' => $request -> skema_pengabdian,
            'judul_pengabdian' => $request -> judul_pengabdian,
            'id_user' => $request -> id_user
        ]);

        $pengabdian->anggotapengabdians()->sync($request->id_anggota);
        return redirect('/sipesan/pengabdian')->with('toast_success', 'Data Berhasil Di Tambahkan!');;
    }
    public function edit($id_pengabdian)
    {
        $pengabdian = pengabdian::findorfail($id_pengabdian);
        $user = User::all();
        $anggotapengabdian = anggotapengabdians::all();
        return view('pengabdian.editpengabdian',compact('user','anggotapengabdian','pengabdian'));
    }
    public function update(Request $request, $id_pengabdian)
    {
        $pengabdian = pengabdian::where('id_pengabdian', $id_pengabdian)->first();
        $validated = $request->validate([
            'skema_pengabdian' => 'required',
            'judul_pengabdian' => 'required',
            'id_user' => 'required'
        ]);

        pengabdian::find($id_pengabdian)->update([
            'skema_pengabdian' => $request -> skema_pengabdian,
            'judul_pengabdian' => $request -> judul_pengabdian,
            'id_user' => $request -> id_user
        ]);

        $pengabdian->anggotapengabdians()->sync($request->id_anggota);
        return redirect('/sipesan/pengabdian')->with('toast_success', 'Data Berhasil Di Ubah!');;
    }
    public function destroy(pengabdian $pengabdianId)
    {
        $pengabdianId->delete();
        return redirect('/sipesan/pengabdian')->with('toast_success', 'Data Berhasil Di Hapus!');
    }
    public function detail($id_pengabdian)
    {
        $pengabdian = pengabdian::find($id_pengabdian);
        $anggotapengabdian = anggotapengabdians::get();
        $user = User::all();
        return view('pengabdian.detailpengabdian', compact('pengabdian','user','anggotapengabdian'));
    }
}