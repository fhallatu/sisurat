<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\user;
use App\Models\penelitian;
use App\Models\pengabdian;
use App\Models\suratpengabdians;
use App\Models\suratpenelitians;

class dashboardcontroller extends Controller
{
    public function index()
    {
        if(auth()->user()->hak_akses == 'dosen')
        {
            if(auth()->user()->id_user)
            {
            $userid = auth()->user()->id_user;
            $suratpenelitian_belumditerima = suratpenelitians::where(['id_user'=>$userid, 'status'=>'dalam antrean'])->count();
            $suratpenelitian_sedangdiproses = suratpenelitians::where(['id_user'=>$userid, 'status'=>'sedang diproses'])->count();
            $suratpenelitian_selesai = suratpenelitians::where(['id_user'=>$userid, 'status'=>'selesai'])->count();

            $suratpengabdian_lengkapifile = suratpengabdians::where(['id_user'=>$userid, 'status'=>'upload file'])->count();
            $suratpengabdian_belumditerima = suratpengabdians::where(['id_user'=>$userid, 'status'=>'dalam antrean'])->count();
            $suratpengabdian_sedangdiproses = suratpengabdians::where(['id_user'=>$userid, 'status'=>'sedang diproses'])->count();
            $suratpengabdian_selesai = suratpengabdians::where(['id_user'=>$userid, 'status'=>'selesai'])->count();
            return view('dashboard',compact('suratpenelitian_belumditerima','suratpenelitian_sedangdiproses','suratpenelitian_selesai','suratpengabdian_lengkapifile','suratpengabdian_belumditerima','suratpengabdian_sedangdiproses','suratpengabdian_selesai'));
            }
        }
        else
        {
        $user_aktif = user::where('status', 'aktif')->count();
        $user_pending = user::where('status', 'pending')->count();
        $user_nonaktif = user::where('status','nonaktif')->count();

        $penelitian = penelitian::count();
        $pengabdian = pengabdian::count();

        $suratpenelitian_belumditerima = suratpenelitians::where('status', 'dalam antrean')->count();
        $suratpenelitian_sedangdiproses = suratpenelitians::where('status','sedang diproses')->count();
        $suratpenelitian_selesai = suratpenelitians::where('status','selesai')->count();

        $suratpengabdian_lengkapifile = suratpengabdians::where('status','upload file')->count();
        $suratpengabdian_belumditerima = suratpengabdians::where('status','dalam antrean')->count();
        $suratpengabdian_sedangdiproses = suratpengabdians::where('status','sedang diproses')->count();
        $suratpengabdian_selesai = suratpengabdians::where('status','selesai')->count();
        return view('dashboard',compact('user_aktif','user_pending','user_nonaktif','penelitian','pengabdian','suratpenelitian_belumditerima','suratpenelitian_sedangdiproses','suratpenelitian_selesai','suratpengabdian_lengkapifile','suratpengabdian_belumditerima','suratpengabdian_sedangdiproses','suratpengabdian_selesai'));
        }
    }
}
