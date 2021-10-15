@extends('layouts.master')

@section('content')
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1> Upload FIle Surat Pengabdian </h1>
        </div>
        <div>
            @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
            @endif
            <form action="/sipesan/surat/pengabdian/uploadfile/{{ $srtpengabdian->id_srtpengabdian }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="card">
                    <div class="card-header">
                        <h4>Data Surat Pengabdian</h4>
                    </div>

                    @if( $srtpengabdian->jenis_suratpengabdian == 'surat tugas')

                    @if( $srtpengabdian->jenis_surattugas == 'surat permohonan mitra')
                    <div class="card-body">
                        <div class="form-group mb-auto">
                            <label for="$file_srt_permohonan">File Surat Permohonan</label>
                            <div class="input-group mb-3">
                                <input type="file" class="form-control" id="file_srt_permohonan" name="file_srt_permohonan">
                                <label class="input-group-text" for="file_srt_permohonan">Upload</label>
                            </div>
                        </div>
                    </div>
                    @else
                    @endif

                    @if( $srtpengabdian->jenis_surattugas == 'proposal')
                    <div>
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$file_proposal">File Proposal</label>
                                <div class="input-group mb-3">
                                    <input type="file" class="form-control" id="file_proposal" name="file_proposal">
                                    <label class="input-group-text" for="file_proposal">Upload</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    @else
                    @endif

                    @else
                    @endif

                    @if( $srtpengabdian->jenis_suratpengabdian == 'surat keterangan')
                    <div>
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$file_srt_mitra">File Surat Keterangan dari Mitra</label>
                                <div class="input-group mb-3">
                                    <input type="file" class="form-control" id="file_srt_mitra" name="file_srt_mitra">
                                    <label class="input-group-text" for="file_srt_mitra">Upload</label>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$file_laporan">Cover dan Halaman Pengesahan</label>
                                <div class="input-group mb-3">
                                    <input type="file" class="form-control" id="file_laporan" name="file_laporan">
                                    <label class="input-group-text" for="file_laporan">Upload</label>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$file_absensi">File Absensi</label>
                                <div class="input-group mb-3">
                                    <input type="file" class="form-control" id="file_absensi" name="file_absensi">
                                    <label class="input-group-text" for="file_absensi">Upload</label>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$file_jurnal">Foto Kegiatan</label>
                                <div class="input-group mb-3">
                                    <input type="file" class="form-control" id="foto_kegiatan"
                                        name="foto_kegiatan">
                                    <label class="input-group-text" for="foto_kegiatan">Upload</label>
                                </div>
                            </div>
                        </div>
                    </div>

                    @if( $srtpengabdian->luaran_keg == 'jurnal')
                    <div class="card-body">
                        <div class="form-group mb-auto">
                            <label for="$file_jurnal">File Jurnal</label>
                            <div class="input-group mb-3">
                                <input type="file" class="form-control" id="file_jurnal" name="file_jurnal">
                                <label class="input-group-text" for="file_jurnal">Upload</label>
                            </div>
                        </div>
                    </div>
                    @else
                    @endif

                    @if( $srtpengabdian->luaran_keg == 'booklet')
                    <div>
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$file_booklet">File Booklet</label>
                                <div class="input-group mb-3">
                                    <input type="file" class="form-control" id="file_booklet" name="file_booklet">
                                    <label class="input-group-text" for="file_booklet">Upload</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    @else
                    @endif

                    @else
                    @endif
                </div>
        </div>
<div class="d-grid gap-2 d-md-flex justify-content-md-end">
    <a href='/sipesan/surat/pengabdian' class="btn btn-danger btn-lg mt-3 me-md-2 mr-2">Kembali</a>
    <button type="submit" class="btn btn-primary btn-lg mt-3 ">Submit</button>
</div>
</form>
</div>
</div>
</div>
@endsection
