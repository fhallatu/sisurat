<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\suratpengabdians;
use App\Models\pengabdian;
use App\Models\penandatangan;
use App\Models\anggotapengabdians;
use App\Models\User;
use Carbon\Carbon;

class suratpengabdiancontroller extends Controller
{
    public function index()
    {
        if(auth()->user()->hak_akses == 'dosen')
        {
            $user_id = auth()->user()->id_user;
            $suratpengabdian = suratpengabdians::where('id_user', $user_id)->orderBy('id_srtpengabdian','asc')->paginate(10);
            return view('surat.pengabdian.suratpengabdian',compact('suratpengabdian'));
        }
        else
        {
            $suratpengabdian = suratpengabdians::with('pengabdian')->orderBy('id_srtpengabdian','asc')->paginate(10);
            return view('surat.pengabdian.suratpengabdian',compact('suratpengabdian'));
        }
    }
    public function create()
    {
        $user_id = auth()->user()->id_user;
        $pengabdian = pengabdian::where(['id_user'=>$user_id])->get();
        return view('surat.pengabdian.createsuratpengabdian', compact('pengabdian'));
    }
    public function uploadfile($id_srtpengabdian)
    {
        $srtpengabdian = suratpengabdians::findorfail($id_srtpengabdian);
        return view('surat.pengabdian.uploadfile', compact('srtpengabdian'));
    }
    public function storefile(Request $request, $id_srtpengabdian)
    {
        $srtpengabdian = suratpengabdians::where('id_srtpengabdian')->first();
        $validated = $request->validate([
            'file_srt_permohonan' => 'nullable|mimes:pdf',
            'file_proposal' => 'nullable|mimes:pdf',
            'file_srt_mitra' => 'nullable|mimes:pdf',
            'file_laporan' => 'nullable|mimes:pdf',
            'file_jurnal' => 'nullable|mimes:pdf',
            'file_booklet' => 'nullable|mimes:pdf',
            'file_absensi' => 'nullable|mimes:pdf',
            'foto_kegiatan' => 'nullable|mimes:pdf',
        ]);

        if($request->file('file_srt_permohonan') != null){
            $fileSrtPermohonan= $request->file_srt_permohonan->getClientOriginalName() . '-' . time() . '.' . $request->file_srt_permohonan->extension();
            $request->file_srt_permohonan->move(public_path('file_srt_permohonan'), $fileSrtPermohonan);
        }
        else
        {
            $fileSrtPermohonan = null;
        }

        if($request->file('file_proposal') != null){
            $fileProposal= $request->file_proposal->getClientOriginalName() . '-' . time() . '.' . $request->file_proposal->extension();
            $request->file_proposal->move(public_path('file_proposal'), $fileProposal);
        }
        else
        {
            $fileProposal = null;
        }

        if($request->file('file_srt_mitra') != null){
            $fileSrtMitra= $request->file_srt_mitra->getClientOriginalName() . '-' . time() . '.' . $request->file_srt_mitra->extension();
            $request->file_srt_mitra->move(public_path('file_srt_mitra'), $fileSrtMitra);
        }
        else
        {
            $fileSrtMitra = null;
        }

        if($request->file('file_laporan') != null){
            $fileLaporan= $request->file_laporan->getClientOriginalName() . '-' . time() . '.' . $request->file_laporan->extension();
            $request->file_laporan->move(public_path('file_laporan'), $fileLaporan);
        }
        else
        {
            $fileLaporan = null;
        }

        if($request->file('file_jurnal') != null){
            $fileJurnal= $request->file_jurnal->getClientOriginalName() . '-' . time() . '.' . $request->file_jurnal->extension();
            $request->file_jurnal->move(public_path('file_jurnal'), $fileJurnal);
        }
        else
        {
            $fileJurnal = null;
        }

        if($request->file('file_booklet') != null){
            $fileBooklet = $request->file_booklet->getClientOriginalName() . '-' . time() . '.' . $request->file_booklet->extension();
            $request->file_booklet->move(public_path('file_booklet'), $fileBooklet);
        }
        else
        {
            $fileBooklet = null;
        }

        if($request->file('file_absensi') != null){
            $fileAbsensi= $request->file_absensi->getClientOriginalName() . '-' . time() . '.' . $request->file_absensi->extension();
            $request->file_absensi->move(public_path('file_absensi'), $fileAbsensi);
        }
        else
        {
            $fileAbsensi = null;
        }

        if($request->file('foto_kegiatan') != null){
            $fotoKegiatan = $request->foto_kegiatan->getClientOriginalName() . '-' . time() . '.' . $request->foto_kegiatan->extension();
            $request->foto_kegiatan->move(public_path('foto_kegiatan'), $fotoKegiatan);
        }
        else
        {
            $fotoKegiatan = null;
        }

        suratpengabdians::find($id_srtpengabdian)->update([
            'file_srt_permohonan' => $fileSrtPermohonan,
            'file_proposal' => $fileProposal,
            'file_srt_mitra' => $fileSrtMitra,
            'file_laporan' => $fileLaporan,
            'file_jurnal' => $fileJurnal,
            'file_booklet' => $fileBooklet,
            'file_absensi' => $fileAbsensi,
            'foto_kegiatan' => $fotoKegiatan,
            'status' => 'dalam antrean'
        ]);
        return redirect('/sipesan/surat/pengabdian')->with('toast_success', 'File Berhasil Di Tambahkan!');
    }
    public function destroy(suratpengabdians $srtpengabdianId)
    {
        $srtpengabdianId->delete();
        return redirect('/sipesan/surat/pengabdian')->with('toast_success', 'Surat berhasil dihapus!');
    }
    public function cetaksurat($id_srtpengabdian)
    {
        $srtpengabdian = suratpengabdians::findorfail($id_srtpengabdian);
        $pengabdian = pengabdian::where('id_pengabdian',$id_srtpengabdian)->get();
        $anggotapengabdian = anggotapengabdians::get();
        $penandatangan = penandatangan::where('id_penandatangan',$id_srtpengabdian)->get();
        $tgl_kegpengabdian = Carbon::parse($srtpengabdian->tgl_keg_pengabdian)->isoFormat('D MMMM Y');
        $tgl_slskeg = Carbon::parse($srtpengabdian->tgl_sls_keg)->isoFormat('D MMMM Y');
        $tgl_mitra = Carbon::parse($srtpengabdian->tgl_srt_mitra)->isoFormat('D MMMM Y');
        $tanggalNow = Carbon::now()->format('d');
        $bulanNow = Carbon::now()->format('F');
        $tahunNow = Carbon::now()->format('Y');
        if($srtpengabdian->jenis_suratpengabdian == 'surat tugas')
        {
            if($srtpengabdian->jenis_surattugas == 'surat permohonan mitra')
            {
                return view('surat.pengabdian.cetak_surattugaspermohonan',compact('pengabdian','srtpengabdian','anggotapengabdian','tanggalNow','bulanNow','tahunNow','tgl_kegpengabdian','tgl_slskeg','penandatangan','tgl_mitra'));
            }
            else
            {
                return view('surat.pengabdian.cetak_surattugasproposal',compact('pengabdian','srtpengabdian','anggotapengabdian','tanggalNow','bulanNow','tahunNow','tgl_kegpengabdian','tgl_slskeg','penandatangan','tgl_mitra'));
            }
        }
        else
        {
        return view('surat.pengabdian.cetak_suratketerangan',compact('pengabdian','srtpengabdian','anggotapengabdian','tanggalNow','bulanNow','tahunNow','tgl_kegpengabdian','tgl_slskeg','penandatangan','tgl_mitra'));
        }
    }
    public function edit ($id_srtpengabdian)
    {
        $srtpengabdian = suratpengabdians::findorfail($id_srtpengabdian);
        $pengabdian = pengabdian::all();
        $anggotapengabdian = anggotapengabdians::get();
        return view('surat.pengabdian.editsuratpengabdian',compact('pengabdian','srtpengabdian','anggotapengabdian'));

    }
    public function update(Request $request, $id_srtpengabdian)
    {
        $srtpengabdian = suratpengabdians::where('id_srtpengabdian')->first();
        $validated = $request->validate([
            'file_suratpengabdian' => 'nullable',
        ]);

        if($request->file('file_suratpengabdian') != null){
            $fileSuratPengabdian= $request->file_suratpengabdian->getClientOriginalName() . '-' . time() . '.' . $request->file_suratpengabdian->extension();
            $request->file_suratpengabdian->move(public_path('file_suratpengabdian'), $fileSuratPengabdian);

        if($validated){
        suratpengabdians::find($id_srtpengabdian)->update([
            //'jenis_suratpengabdian' => $request->jenis_suratpengabdian,
            //'jenis_surattugas' => $request->jenis_surattugas,
            //'tgl_srt_permohonan' => $request->tgl_srt_permohonan,
            //'no_srt_permohonan' => $request->no_srt_permohonan,
            //'file_srt_permohonan' => $request->file_srt_permohonan,
            //'tgl_keg_pengabdian' => $request->tgl_keg_pengabdian,
            //'lok_keg_pengabdian' => $request->lok_keg_pengabdian,
            //'file_proposal' => $request->file_proposal,
            //'no_srt_mitra' => $request->no_srt_mitra,
            //'tgl_srt_mitra' => $request->tgl_srt_mitra,
            //'file_srt_mitra' => $request->file_srt_mitra,
            //'file_laporan' => $request->file_laporan,
            //'luaran_keg' => $request->luaran_keg,
            //'judul_jurnal' => $request->judul_jurnal,
            //'pub_jurnal' => $request->pub_jurnal,
            //'file_jurnal' => $request->file_jurnal,
            //'file_booklet' => $request->file_booklet,
            //'link_kegiatan' => $request->link_kegiatan,
            //'file_absensi' => $request->file_absensi,
            //'foto_kegiatan' => $request->foto_kegiatan,
            //'id_pengabdian' => $request->id_pengabdian,
            'file_suratpengabdian' => $fileSuratPengabdian,
            'status' => 'selesai'
        ]);
    }
    }else{
        suratpengabdians::find($id_srtpengabdian)->update([
            //'jenis_suratpengabdian' => $request->jenis_suratpengabdian,
            //'jenis_surattugas' => $request->jenis_surattugas,
            //'tgl_srt_permohonan' => $request->tgl_srt_permohonan,
            //'no_srt_permohonan' => $request->no_srt_permohonan,
            //'file_srt_permohonan' => $request->file_srt_permohonan,
            //'tgl_keg_pengabdian' => $request->tgl_keg_pengabdian,
            //'lok_keg_pengabdian' => $request->lok_keg_pengabdian,
            //'file_proposal' => $request->file_proposal,
            //'no_srt_mitra' => $request->no_srt_mitra,
            //'tgl_srt_mitra' => $request->tgl_srt_mitra,
            //'file_srt_mitra' => $request->file_srt_mitra,
            //'file_laporan' => $request->file_laporan,
            //'luaran_keg' => $request->luaran_keg,
            //'judul_jurnal' => $request->judul_jurnal,
            //'pub_jurnal' => $request->pub_jurnal,
            //'file_jurnal' => $request->file_jurnal,
            //'file_booklet' => $request->file_booklet,
            //'link_kegiatan' => $request->link_kegiatan,
            //'file_absensi' => $request->file_absensi,
            //'foto_kegiatan' => $request->foto_kegiatan,
            //'id_pengabdian' => $request->id_pengabdian,
        ]);
    }
        return redirect('/sipesan/surat/pengabdian')->with('toast_success', 'Data Berhasil Di Ubah!');
    }
    public function downloadsurat($id_srtpengabdian)
    {
        $suratpengabdian = suratpengabdians::where('id_srtpengabdian',$id_srtpengabdian)->get();
        $unduh = public_path('file_suratpengabdian/' .$suratpengabdian->file_pengabdian);
        $fileName = time().'.pdf';
        return response()->download($unduh, $fileName);
    }
    public function downloadfilepermohonan($id_srtpengabdian)
    {
        $suratpengabdian = suratpengabdians::where('id_srtpengabdian',$id_srtpengabdian)->get();
        $unduh = public_path('file_srt_permohonan/' .$suratpengabdian->file_srt_permohonan);
        $fileName = time().'.pdf';
        return response()->download($unduh, $fileName);
    }
    public function downloadfilemitra($id_srtpengabdian)
    {
        $suratpengabdian = suratpengabdians::where('id_srtpengabdian',$id_srtpengabdian)->get();
        $unduh = public_path('file_srt_mitra/' .$suratpengabdian->file_srt_mitra);
        $fileName = time().'.pdf';
        return response()->download($unduh, $fileName);
    }
    public function downloadfileproposal($id_srtpengabdian)
    {
        $suratpengabdian = suratpengabdians::where('id_srtpengabdian',$id_srtpengabdian)->get();
        $unduh = public_path('file_proposal/' .$suratpengabdian->file_proposal);
        $fileName = time().'.pdf';
        return response()->download($unduh, $fileName);
    }
    public function downloadfilelaporan($id_srtpengabdian)
    {
        $suratpengabdian = suratpengabdians::where('id_srtpengabdian',$id_srtpengabdian)->get();
        $unduh = public_path('file_laporan/' .$suratpengabdian->file_laporan);
        $fileName = time().'.pdf';
        return response()->download($unduh, $fileName);
    }
    public function downloadfilejurnal($id_srtpengabdian)
    {
        $suratpengabdian = suratpengabdians::where('id_srtpengabdian',$id_srtpengabdian)->get();
        $unduh = public_path('file_jurnal/' .$suratpengabdian->file_jurnal);
        $fileName = time().'.pdf';
        return response()->download($unduh, $fileName);
    }
    public function downloadfilebooklet($id_srtpengabdian)
    {
        $suratpengabdian = suratpengabdians::where('id_srtpengabdian',$id_srtpengabdian)->get();
        $unduh = public_path('file_booklet/' .$suratpengabdian->file_booklet);
        $fileName = time().'.pdf';
        return response()->download($unduh, $fileName);
    }
    public function downloadfileabsensi($id_srtpengabdian)
    {
        $suratpengabdian = suratpengabdians::where('id_srtpengabdian',$id_srtpengabdian)->get();
        $unduh = public_path('file_absensi/' .$suratpengabdian->file_absensi);
        $fileName = time().'.pdf';
        return response()->download($unduh, $fileName);
    }
    public function downloadfotokegiatan($id_srtpengabdian)
    {
        $suratpengabdian = suratpengabdians::where('id_srtpengabdian',$id_srtpengabdian)->get();
        $unduh = public_path('foto_kegiatan/' .$suratpengabdian->foto_kegiatan);
        $fileName = time().'.pdf';
        return response()->download($unduh, $fileName);
    }
    public function updatestatus($id_srtpengabdian)
    {
        $suratpengabdian = suratpengabdians::findorfail($id_srtpengabdian);
        if($suratpengabdian->status == 'dalam antrean')
        {
            $suratpengabdian->status = 'sedang diproses';
            $suratpengabdian->save();
            return back();
        }
    }
    public function detail($id_srtpengabdian)
    {
        $srtpengabdian = suratpengabdians::find($id_srtpengabdian);
        $pengabdian = pengabdian::all();
        $anggotapengabdian = anggotapengabdians::get();
        return view('surat.pengabdian.detailsuratpengabdian',compact('srtpengabdian','pengabdian','anggotapengabdian'));
    }
    public function suratuploadfile()
    {
        if(auth()->user()->hak_akses == 'dosen')
        {
            $user_id = auth()->user()->id_user;
            $suratpengabdian = suratpengabdians::where(['id_user'=>$user_id, 'status'=>'upload file'])->get();
            return view('verifikasisurat.pengabdian.uploadfile',compact('suratpengabdian'));
        }
        else
        {
            $suratpengabdian = suratpengabdians::where('status','upload file')->get();
            return view('verifikasisurat.pengabdian.uploadfile',compact('suratpengabdian'));
        }
    }
    public function suratantrean()
    {
        if(auth()->user()->hak_akses == 'dosen')
        {
            $user_id = auth()->user()->id_user;
            $suratpengabdian = suratpengabdians::where(['id_user'=>$user_id, 'status'=>'dalam antrean'])->get();
            return view('verifikasisurat.pengabdian.antrean',compact('suratpengabdian'));
        }
        else
        {
            $suratpengabdian = suratpengabdians::where('status','dalam antrean')->get();
            return view('verifikasisurat.pengabdian.antrean',compact('suratpengabdian'));
        }
    }
    public function suratproses()
    {
        if(auth()->user()->hak_akses == 'dosen')
        {
            $user_id = auth()->user()->id_user;
            $suratpengabdian = suratpengabdians::where(['id_user'=>$user_id, 'status'=>'sedang diproses'])->get();
            return view('verifikasisurat.pengabdian.proses',compact('suratpengabdian'));
        }
        else
        {
            $suratpengabdian = suratpengabdians::where('status','sedang diproses')->get();
            return view('verifikasisurat.pengabdian.proses',compact('suratpengabdian'));
        }
    }
    public function suratselesai()
    {
        if(auth()->user()->hak_akses == 'dosen')
        {
            $user_id = auth()->user()->id_user;
            $suratpengabdian = suratpengabdians::where(['id_user'=>$user_id, 'status'=>'selesai'])->get();
            return view('verifikasisurat.pengabdian.selesai',compact('suratpengabdian'));
        }
        else
        {
            $suratpengabdian = suratpengabdians::where('status','selesai')->get();
            return view('verifikasisurat.pengabdian.selesai',compact('suratpengabdian'));
        }
    }
    public function editpenandatangan ($id_srtpengabdian)
    {
        $srtpengabdian = suratpengabdians::findorfail($id_srtpengabdian);
        $penandatangan = penandatangan::all();
        return view('surat.pengabdian.pilihpenandatangan',compact('penandatangan','srtpengabdian'));

    }
    public function updatepenandatangan(Request $request, $id_srtpengabdian)
    {
        $srtpengabdian = suratpengabdians::where('id_srtpengabdian')->first();
        $validated = $request->validate([
                    'id_penandatangan' => 'nullable'
        ]);
        
        suratpengabdians::find($id_srtpengabdian)->update([
            'id_penandatangan' => $request->id_penandatangan,
        ]);
        return redirect('/sipesan/surat/pengabdian')->with('toast_success', 'Data Berhasil Di Ubah!');
    }
}
