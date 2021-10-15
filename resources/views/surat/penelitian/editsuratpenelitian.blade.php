@extends('layouts.master')

@section('content')
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1> Edit Data Surat Penelitian </h1>
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
            <form action="/sipesan/surat/penelitian/{{$srtpenelitian->id_srtpenelitian}}" method="POST"
                enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="card">
                    <div class="card-header">
                        <h4>Surat Penelitian</h4>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-auto">
                            <label for="$file_jurnal">File Surat</label>
                            <div class="input-group mb-3">
                                <input type="file" class="form-control" id="file_suratpenelitian"
                                    name="file_suratpenelitian">
                                <label class="input-group-text" for="file_suratpenelitian">Upload</label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <a href='/sipesan/surat/penelitian' class="btn btn-danger btn-lg mt-3 me-md-2 mr-2">Kembali</a>
                    <button type="submit" class="btn btn-primary btn-lg mt-3 ">Simpan</button>
                </div>
            </form>
        </div>

</div>
@endsection
