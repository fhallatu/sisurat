@extends('layouts.master')

@section('content')
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1> Data User Nonaktif </h1>
        </div>
    </section>
    <div class="card">
        <div class="card-body">
            <table class="table table-hover table-responsive">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nama User</th>
                        <th scope="col">NIP</th>
                        <th scope="col">NIDN</th>
                        <th scope="col">Email</th>
                        <th scope="col">Hak Akses</th>
                        <th scope="col">Status</th>
                    </tr>
                </thead>
                <tbody>

                    @foreach ($user as $item)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{$item->nama_user}}</td>
                        <td>{{$item->nip_user}}</td>
                        <td>{{$item->nidn_user}}</td>
                        <td>{{$item->email_user}}</td>
                        <td><span class="badge badge-info">{{$item->hak_akses}}</span></td>
                        <td>
                            @if($item->status=="nonaktif")
                            <span class="badge badge-danger">{{$item->status}}</span>
                            @elseif($item->status=="pending")
                            <span class="badge badge-warning">{{$item->status}}</span>
                            @elseif($item->status=="aktif")
                            <span class="badge badge-success">{{$item->status}}</span>
                            @endif
                        </td>
                    </tr>
                    @endforeach

                </tbody>
            </table>
        </div>
    </div>
</div>



@endsection
