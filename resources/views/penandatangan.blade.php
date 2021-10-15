@extends('layouts.master')

@section('content')
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1> Tambah Data Penandatangan </h1>
        </div>

        <form action="/sipesan/penandatangan" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="card">
                <div class="card-header">
                    <h4>Penandatangan Surat</h4>
                </div>

                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label for="$nama_penandatangan">Nama</label>
                        <input type="text" class="form-control" name="nama_penandatangan"
                            placeholder="Tuliskan Nama Penandatangan..." value="" />
                        @error('nama_penandatangan') <span class="text-danger">{{ $message }}</span> @enderror
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label for="$nip_penandatangan">NIP / NIDN / NPM</label>
                        <input type="text" class="form-control" name="nip_penandatangan"
                            placeholder="Tuliskan NIP / NIDN / NPM Penandatangan..." value="" />
                        @error('nip_penandatangan') <span class="text-danger">{{ $message }}</span> @enderror
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label for="$jabatan">Jabatan</label>
                        <input type="text" class="form-control" name="jabatan"
                            placeholder="Tuliskan Jabatan Penandatangan..." value="" />
                        @error('jabatan') <span class="text-danger">{{ $message }}</span> @enderror
                    </div>
                </div>


</div>
<div class="d-grid gap-2 d-md-flex justify-content-md-end">
    <a href='/sipesan/dashboard' class="btn btn-danger btn-lg mt-3 me-md-2 mr-2">Kembali</a>
    <button type="submit" class="btn btn-primary btn-lg mt-3 ">Submit</button>
</div>
</form>
</div>
@endsection
