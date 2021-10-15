<?php

namespace App\Http\Controllers;

use App\Models\user;
use Illuminate\support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

use function PHPUnit\Framework\returnCallback;

class usercontroller extends Controller
{
    public function index()
    {
        $user = user::orderBy('id_user','asc')->paginate(6);
        return view('user.user',compact('user'));
    }
    public function create()
    {
        return view('user.createuser');
    }
    public function store(Request $request)
    {
        $validated = $request->validate([
            'nama_user' => 'required',
            'jenis_kelamin_user' => 'required',
            'prodi_user' => 'required|min:3',
            'fakultas_user' => 'required|min:3',
            'foto_profil' => 'mimes:jpeg,png,jpg,gif,svg'
        ]);

        if($request->file('foto_profil') != null){
            $imgName= $request->foto_profil->getClientOriginalName() . '-' . time() . '.' . $request->foto_profil->extension();
            $request->foto_profil->move(public_path('foto_profile'), $imgName);
    
            if($validated){
                user::create([
                    'nama_user' => $request -> nama_user,
                    'nip_user' => $request -> nip_user,
                    'nidn_user' => $request -> nidn_user,
                    'email_user' => $request -> email_user,
                    'no_hp_user' => $request -> no_hp_user,
                    'alamat_user' => $request -> alamat_user,
                    'tgl_lahir_user' => $request -> tgl_lahir_user,
                    'jenis_kelamin' => $request -> jenis_kelamin_user,
                    'prodi_user' => $request -> prodi_user,
                    'fakultas_user' => $request -> fakultas_user,
                    'password' => Hash::make('password'),
                    'remember_token' => $request -> remember_token,
                    'hak_akses' => $request -> hak_akses,
                    'foto_profil' => $imgName,
                    'status'=> 'nonaktif'
                ]);
            }
        }else{
            user::create([
                'nama_user' => $request -> nama_user,
                'nip_user' => $request -> nip_user,
                'nidn_user' => $request -> nidn_user,
                'email_user' => $request -> email_user,
                'no_hp_user' => $request -> no_hp_user,
                'alamat_user' => $request -> alamat_user,
                'tgl_lahir_user' => $request -> tgl_lahir_user,
                'jenis_kelamin' => $request -> jenis_kelamin_user,
                'prodi_user' => $request -> prodi_user,
                'fakultas_user' => $request -> fakultas_user,
                'password' => Hash::make('password'),
                'remember_token' => $request -> remember_token,
                'hak_akses' => $request -> hak_akses,
                'status'=> 'nonaktif'
            ]);
        }
        return redirect('/sipesan/user')->with('toast_success', 'Berhasil Ditambahkan!');
    }
    public function edit($id_user)
    {
        $user = user::find($id_user);
        return view('user.edituser',compact('user'));
    }
    public function update(Request $request, $id_user)
    {
        $user = user::where('id_user')->first();
        $validated = $request->validate([
            'nama_user' => 'required',
            'email_user' => 'required|min:10',
            'jenis_kelamin_user' => 'required',
            'prodi_user' => 'required|min:3',
            'fakultas_user' => 'required|min:3',
            'foto_profil' => 'mimes:jpeg,png,jpg,gif,svg'
        ]);
        
        if($request->file('foto_profil') != null){
            $imgName= $request->foto_profil->getClientOriginalName() . '-' . time() . '.' . $request->foto_profil->extension();
            $request->foto_profil->move(public_path('foto_profile'), $imgName);
    
            if($validated){
                user::find($id_user)->update([
                    'nama_user' => $request -> nama_user,
                    'nip_user' => $request -> nip_user,
                    'nidn_user' => $request -> nidn_user,
                    'email_user' => $request -> email_user,
                    'no_hp_user' => $request -> no_hp_user,
                    'alamat_user' => $request -> alamat_user,
                    'tgl_lahir_user' => $request -> tgl_lahir_user,
                    'jenis_kelamin_user' => $request -> jenis_kelamin_user,
                    'prodi_user' => $request -> prodi_user,
                    'fakultas_user' => $request -> fakultas_user,
                    'password' => $request -> password,
                    'remember_token' => $request -> remember_token,
                    'hak_akses' => $request -> hak_akses,
                    'foto_profil' => $imgName
                ]);
            }
        }else{
            user::find($id_user)->update([
                'nama_user' => $request -> nama_user,
                'nip_user' => $request -> nip_user,
                'nidn_user' => $request -> nidn_user,
                'email_user' => $request -> email_user,
                'no_hp_user' => $request -> no_hp_user,
                'alamat_user' => $request -> alamat_user,
                'tgl_lahir_user' => $request -> tgl_lahir_user,
                'jenis_kelamin_user' => $request -> jenis_kelamin_user,
                'prodi_user' => $request -> prodi_user,
                'fakultas_user' => $request -> fakultas_user,
                'password' => $request -> password,
                'remember_token' => $request -> remember_token,
                'hak_akses' => $request -> hak_akses
            ]);
        }
        return redirect('/sipesan/user')->with('toast_success', 'User berhasil diubah!');
    }
    public function destroy(user $userId)
    {
        $userId->delete();
        return redirect('/sipesan/user')->with('toast_success', 'User berhasil dihapus!');
    }
    public function detail($id_user)
    {
        $user = user::find($id_user);
        return view('user.detailuser',compact('user'));
    }
    public function profile()
    {
        $user = auth()->user();
        return view('profile',compact('user'));
    }
    public function updateprofile(Request $request)
    {
        $user = auth()->user();
        $validated = $request->validate([
            'nama_user' => 'required',
            'email_user' => 'required|min:10',
            'jenis_kelamin_user' => 'required',
            'prodi_user' => 'required|min:3',
            'fakultas_user' => 'required|min:3',
            'foto_profil' => 'mimes:jpeg,png,jpg,gif,svg'
        ]);
        
        if($request->file('foto_profil') != null){
            $imgName= $request->foto_profil->getClientOriginalName() . '-' . time() . '.' . $request->foto_profil->extension();
            $request->foto_profil->move(public_path('foto_profile'), $imgName);
    
            if($validated){
                $request->user()->update([
                    'nama_user' => $request -> nama_user,
                    'nip_user' => $request -> nip_user,
                    'nidn_user' => $request -> nidn_user,
                    'email_user' => $request -> email_user,
                    'no_hp_user' => $request -> no_hp_user,
                    'alamat_user' => $request -> alamat_user,
                    'tgl_lahir_user' => $request -> tgl_lahir_user,
                    'jenis_kelamin_user' => $request -> jenis_kelamin_user,
                    'prodi_user' => $request -> prodi_user,
                    'fakultas_user' => $request -> fakultas_user,
                    'foto_profil' => $imgName
                ]);
            }
        }else{
            $request->user()->update([
                'nama_user' => $request -> nama_user,
                'nip_user' => $request -> nip_user,
                'nidn_user' => $request -> nidn_user,
                'email_user' => $request -> email_user,
                'no_hp_user' => $request -> no_hp_user,
                'alamat_user' => $request -> alamat_user,
                'tgl_lahir_user' => $request -> tgl_lahir_user,
                'jenis_kelamin_user' => $request -> jenis_kelamin_user,
                'prodi_user' => $request -> prodi_user,
                'fakultas_user' => $request -> fakultas_user
            ]);
        }
        return redirect('/sipesan/profile')->with('toast_success', 'Profile berhasil diubah!');
    }
    public function ubahpassword()
    {
        $user = auth()->user();
        return view('changepassword',compact('user'));
    }
    public function submit(Request $request)
    {
        $validated = $request->validate([
            'current_password' => 'required',
            'new_password' => 'required',
            'confirm_password' => 'required|same:new_password',
        ]);

        user::find(auth()->user()->id_user)->update(['password'=> Hash::make($request->new_password)]);

        return redirect('/sipesan/dashboard')->with('toast_success', 'Password telah berhasil diubah.');
    }
    public function statusnonaktif()
    {
        $user = user::where('status','nonaktif')->get();
        return view('verifikasiuser.nonaktifuser',compact('user'));
    }
    public function statuspending()
    {
        $user = user::where('status','pending')->get();
        return view('verifikasiuser.pendinguser',compact('user'));
    }
    public function statusaktif()
    {
        $user = user::where('status','aktif')->get();
        return view('verifikasiuser.aktifuser',compact('user'));
    }
    public function updatestatus($id_user)
    {
        $user = user::findorfail($id_user);
        if($user->status == 'pending')
        {
            $user->status = 'aktif';
            $user->save();
            return back();
        }
    }
}

