@extends('layouts.master')

@section('content')

<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1> Manajemen Penelitian </h1> <a href='/sipesan/penelitian/create' class="btn btn-primary ml-3">+</a>
        </div>

        <div class="card">
            <div class="card-body">
                <table class="table table-hover table-responsive">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Skema</th>
                            <th scope="col">Judul</th>
                            <th scope="col">Nama Ketua</th>
                            <th scope="col">NIP</th>
                            <th scope="col">NIDN</th>
                            <th scope="col">Fakultas</th>
                            <th scope="col">Prodi</th>
                            <th scope="col">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            @foreach ($penelitian as $item)
                            <td>{{$loop->iteration}}</td>
                            <td>{{$item->skema_penelitian}}</td>
                            <td>{{$item->judul_penelitian}}</td>
                            <td>{{$item->user['nama_user']}}</td>
                            <td>{{$item->user['nip_user']}}</td>
                            <td>{{$item->user['nidn_user']}}</td>
                            <td>{{$item->user['fakultas_user']}}</td>
                            <td>{{$item->user['prodi_user']}}</td>
                            <td>
                                <div class='d-flex flex-row bd-highlight'>
                                    <a href='/sipesan/penelitian/{{ $item->id_penelitian }}/edit'
                                        class="btn btn-sm btn-primary ml-1"><i class="fas fa-edit"></i></a>
                                    <a href="#" penelitian-id="{{ $item->id_penelitian }}" penelitian-judul="{{ $item->judul_penelitian }}"
                                        class="deletePenelitian btn btn-sm btn-danger ml-1"><i
                                            class="far fa-trash-alt"></i></a>
                                    <a href='/sipesan/penelitian/{{$item->id_penelitian}}/detail'
                                        class="btn btn-sm btn-info ml-1"><i class="fas fa-info"></i></a>
                                </div>
                            </td>
                        </tr>
                        @endforeach

                    </tbody>
                </table>

                {{ $penelitian->links() }}
            </div>
        </div>
</div>
@endsection
@push('script')
<script>
    $('.deletePenelitian').click(function () {
        var penelitianId = $(this).attr('penelitian-id');
        swal({
            title: "Hapus Data Penelitian",
            text: "Apakah anda yakin ingin menghapus data penelitian ini ?",
            icon: "warning",
            buttons: ["Jangan Hapus", "Hapus"],
            dangerMode: true,
            closeOnClickOutside: false,
        }).then((willDelete) => {
            if (willDelete) {
                window.location = "/sipesan/penelitian/delete/" + penelitianId + "";
            } else {
                swal("data penelitian tidak jadi dihapus.");
            }
        });
    });

</script>
@endpush