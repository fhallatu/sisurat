<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\user;
use Illuminate\Support\Facades\Hash;


class authcontroller extends Controller
{
    public function login()
    {
        return view('auth.login');
    }
    public function postlogin(Request $request)
    {
    if(Auth::attempt(['nip_user'=>$request->nip_user, 'password'=>$request->password, 'status'=>'aktif']))
       {
           return redirect('/sipesan/dashboard');
       }
       return redirect('sipesan/login');
    }
    public function logout()
    {
        Auth::logout();
        return redirect('/sipesan/login');
    }
    public function register()
    {
        $user = user::all();
        return view('auth.registrasi',compact('user'));
    }
    public function registerupdate(Request $request)
    {
        $registrasi = $request->id_user;
        $validated = $request->validate([
            'nidn_user' => 'nullable',
            'email_user' => 'required|min:10',
            'no_hp_user' => 'required',
            'tgl_lahir_user' => 'required',
            'alamat_user' => 'required',
            'prodi_user' => 'nullable',
            'fakultas_user' => 'nullable'
        ]);
                user::find($registrasi)->update([
                    'nidn_user' => $request -> nidn_user,
                    'email_user' => $request -> email_user,
                    'no_hp_user' => $request -> no_hp_user,
                    'alamat_user' => $request -> alamat_user,
                    'tgl_lahir_user' => $request -> tgl_lahir_user,
                    'prodi_user' => $request -> prodi_user,
                    'fakultas_user' => $request -> fakultas_user,
                    'status' => 'pending',
                    'password' => Hash::make('password')
        ]);
        return redirect('/sipesan/login')->with('success', 'Akun Berhasil Ditambahkan Silahkan Tunggu Persetujuan Akun');
    }
}
