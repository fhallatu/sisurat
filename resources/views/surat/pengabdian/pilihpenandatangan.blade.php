@extends('layouts.master')

@section('content')

<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1> Pilih Penandatangan </h1>
        </div>

        <form action="/sipesan/surat/pengabdian/penandatangan/{{$srtpengabdian->id_srtpengabdian}}" method="POST"
            enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="card">
                <div class="card-header">
                    <h4>Data Penandatangan</h4>
                </div>

                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label>Penandatangan Surat</label>
                        <select class="selectpicker form-control" name="id_penandatangan" id="id_penandatangan" data-live-search="true">
                            @foreach ($penandatangan as $item)
                            <option value="{{ $item->id_penandatangan }}">{{ $item->nip_penandatangan }} ~ ( {{ $item->nama_penandatangan }} )
                            </option>
                            @endforeach
                        </select>
                    </div>
                </div>

            </div>
<div class="d-grid gap-2 d-md-flex justify-content-md-end">
    <a href='/sipesan/surat/pengabdian' class="btn btn-danger btn-lg mt-3 me-md-2 mr-2">Kembali</a>
    <button type="submit" class="btn btn-primary btn-lg mt-3 mr-2">Submit</button>
</div>
</div>
</form>
</div>

@endsection

@push('style')
<link href="{{ asset('assets/select/css/bootstrap-select.min.css') }}" rel="stylesheet">
@endpush
@push('script')
<script type="text/javascript" src="{{ asset('assets/select/js/bootstrap-select.min.js') }}"></script>
@endpush
