<?php

namespace App\Http\Controllers;

use App\Models\suratpenelitians;
use App\Models\penelitian;
use App\Models\penandatangan;
use App\Models\anggotapenelitians;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class suratpenelitiancontroller extends Controller
{
    public function index()
    {
        if(auth()->user()->hak_akses == 'dosen')
        {
            $user_id = auth()->user()->id_user;
            $suratpenelitian = suratpenelitians::where('id_user', $user_id)->orderBy('id_srtpenelitian','asc')->paginate(10);
            return view('surat.penelitian.suratpenelitian',compact('suratpenelitian'));
        }
        else
        {
            $suratpenelitian = suratpenelitians::with('penelitian')->orderBy('id_srtpenelitian','asc')->paginate(10);
            return view('surat.penelitian.suratpenelitian',compact('suratpenelitian'));
        }
    }
    public function create()
    {
        $user_id = auth()->user()->id_user;
        $penelitian = penelitian::where(['id_user'=>$user_id])->get();
        return view('surat.penelitian.createsuratpenelitian', compact('penelitian'));
    }
    public function edit ($id_srtpenelitian)
    {
        $srtpenelitian = suratpenelitians::findorfail($id_srtpenelitian);
        $penelitian = penelitian::all();
        $anggotapenelitian = anggotapenelitians::get();
        return view('surat.penelitian.editsuratpenelitian',compact('penelitian','srtpenelitian','anggotapenelitian'));

    }
    public function update(Request $request, $id_srtpenelitian)
    {
        $srtpenelitian = suratpenelitians::where('id_srtpenelitian')->first();
        $validated = $request->validate([
                    'file_suratpenelitian' => 'nullable'
        ]);

        if($request->file('file_suratpenelitian') != null){
            $fileSuratPenelitian= $request->file_suratpenelitian->getClientOriginalName() . '-' . time() . '.' . $request->file_suratpenelitian->extension();
            $request->file_suratpenelitian->move(public_path('file_suratpenelitian'), $fileSuratPenelitian);
        
        if($validated){
        suratpenelitians::find($id_srtpenelitian)->update([
            'file_suratpenelitian' => $fileSuratPenelitian,
            'status' => 'selesai'
        ]);
    }
    }else{
        suratpenelitians::find($id_srtpenelitian)->update([
        ]);
    }
        return redirect('/sipesan/surat/penelitian')->with('toast_success', 'Data Berhasil Di Ubah!');
    }
    public function destroy(suratpenelitians $srtpenelitianId)
    {
        $srtpenelitianId->delete();
        return redirect('/sipesan/surat/penelitian')->with('toast_success', 'Surat berhasil dihapus!');
    }
    public function cetaksurat($id_srtpenelitian)
    {
        $srtpenelitian = suratpenelitians::findorfail($id_srtpenelitian);
        $penelitian = penelitian::where('id_penelitian',$id_srtpenelitian)->get();
        $penandatangan = penandatangan::where('id_penandatangan',$id_srtpenelitian)->get();
        $anggotapenelitian = anggotapenelitians::get();
        $tgl_kegpenelitian = Carbon::parse($srtpenelitian->tgl_keg_penelitian)->isoFormat('D MMMM Y');
        $tgl_slskeg = Carbon::parse($srtpenelitian->tgl_sls_keg)->isoFormat('D MMMM Y');
        $tanggalNow = Carbon::now()->format('d');
        $bulanNow = Carbon::now()->format('F');
        $tahunNow = Carbon::now()->format('Y');
        if($srtpenelitian->jenis_suratpenelitian == 'surat tugas')
        {
        return view('surat.penelitian.cetak_surattugas',compact('penelitian','srtpenelitian','anggotapenelitian','tanggalNow','bulanNow','tahunNow','tgl_kegpenelitian','tgl_slskeg','penandatangan'));
        }
        else
        {
        return view('surat.penelitian.cetak_suratketerangan',compact('penelitian','srtpenelitian','anggotapenelitian','tanggalNow','bulanNow','tahunNow','tgl_kegpenelitian','tgl_slskeg','penandatangan'));
        }
    }
    public function downloadsurat($id_srtpenelitian)
    {
        $suratpenelitian = suratpenelitians::where('id_srtpenelitian',$id_srtpenelitian)->get();
        $unduh = public_path('/storage/file_suratpenelitian/' .$suratpenelitian->file_penelitian);
        $fileName = time().'.pdf';
        return response()->download($unduh, $fileName);
    }
    public function updatestatus($id_srtpenelitian)
    {
        $suratpenelitian = suratpenelitians::findorfail($id_srtpenelitian);
        if($suratpenelitian->status == 'dalam antrean')
        {
            $suratpenelitian->status = 'sedang diproses';
            $suratpenelitian->save();
            return back();
        }
    }
    public function detail($id_srtpenelitian)
    {
        $srtpenelitian = suratpenelitians::find($id_srtpenelitian);
        $penelitian = penelitian::all();
        $anggotapenelitian = anggotapenelitians::get();
        return view('surat.penelitian.detailsuratpenelitian',compact('srtpenelitian','penelitian','anggotapenelitian'));
    }
    public function suratantrean()
    {
        if(auth()->user()->hak_akses == 'dosen')
        {
            $user_id = auth()->user()->id_user;
            $suratpenelitian = suratpenelitians::where(['id_user'=>$user_id, 'status'=>'dalam antrean'])->get();
            return view('verifikasisurat.penelitian.antrean',compact('suratpenelitian'));
        }
        else
        {
            $suratpenelitian = suratpenelitians::where('status','dalam antrean')->get();
            return view('verifikasisurat.penelitian.antrean',compact('suratpenelitian'));
        }
    }
    public function suratproses()
    {
        if(auth()->user()->hak_akses == 'dosen')
        {
            $user_id = auth()->user()->id_user;
            $suratpenelitian = suratpenelitians::where(['id_user'=>$user_id, 'status'=>'sedang diproses'])->get();
            return view('verifikasisurat.penelitian.proses',compact('suratpenelitian'));
        }
        else
        {
            $suratpenelitian = suratpenelitians::where('status','sedang diproses')->get();
            return view('verifikasisurat.penelitian.proses',compact('suratpenelitian'));
        }
    }
    public function suratselesai()
    {
        if(auth()->user()->hak_akses == 'dosen')
        {
            $user_id = auth()->user()->id_user;
            $suratpenelitian = suratpenelitians::where(['id_user'=>$user_id, 'status'=>'selesai'])->get();
            return view('verifikasisurat.penelitian.selesai',compact('suratpenelitian'));
        }
        else
        {
            $suratpenelitian = suratpenelitians::where('status','selesai')->get();
            return view('verifikasisurat.penelitian.selesai',compact('suratpenelitian'));
        }
    }
    public function editpenandatangan ($id_srtpenelitian)
    {
        $srtpenelitian = suratpenelitians::findorfail($id_srtpenelitian);
        $penandatangan = penandatangan::all();
        return view('surat.penelitian.pilihpenandatangan',compact('penandatangan','srtpenelitian'));

    }
    public function updatepenandatangan(Request $request, $id_srtpenelitian)
    {
        $srtpenelitian = suratpenelitians::where('id_srtpenelitian')->first();
        $validated = $request->validate([
                    'id_penandatangan' => 'nullable'
        ]);
        
        suratpenelitians::find($id_srtpenelitian)->update([
            'id_penandatangan' => $request->id_penandatangan,
        ]);
        return redirect('/sipesan/surat/penelitian')->with('toast_success', 'Data Berhasil Di Ubah!');
    }
}
