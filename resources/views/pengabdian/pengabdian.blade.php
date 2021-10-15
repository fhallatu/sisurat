@extends('layouts.master')

@section('content')

<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1> Manajemen Pengabdian </h1> <a href='/sipesan/pengabdian/create' class="btn btn-primary ml-3">+</a>
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
                            @foreach ($pengabdian as $item)
                            <td>{{$loop->iteration}}</td>
                            <td>{{$item->skema_pengabdian}}</td>
                            <td>{{$item->judul_pengabdian}}</td>
                            <td>{{$item->user['nama_user']}}</td>
                            <td>{{$item->user['nip_user']}}</td>
                            <td>{{$item->user['nidn_user']}}</td>
                            <td>{{$item->user['fakultas_user']}}</td>
                            <td>{{$item->user['prodi_user']}}</td>
                            <td>
                                <div class='d-flex flex-row bd-highlight'>
                                    <a href='/sipesan/pengabdian/{{ $item->id_pengabdian }}/edit'
                                        class="btn btn-sm btn-primary ml-1"><i class="fas fa-edit"></i></a>
                                    <a href="#" pengabdian-id="{{ $item->id_pengabdian }}"
                                        pengabdian-judul="{{ $item->judul_pengabdian }}"
                                        class="deletePengabdian btn btn-sm btn-danger ml-1"><i
                                            class="far fa-trash-alt"></i></a>
                                    <a href='/sipesan/pengabdian/{{$item->id_pengabdian}}/detail'
                                        class="btn btn-sm btn-info ml-1"><i class="fas fa-info"></i></a>
                                </div>
                            </td>
                        </tr>
                        @endforeach

                    </tbody>
                </table>

                {{ $pengabdian->links() }}
            </div>
        </div>
</div>
@endsection
@push('script')
<script>
    $('.deletePengabdian').click(function () {
        var pengabdianId = $(this).attr('pengabdian-id');
        swal({
            title: "Hapus Data Pengabdian",
            text: "Apakah anda yakin ingin menghapus data pengabdian ini ? ",
            icon: "warning",
            buttons: ["Jangan Hapus", "Hapus"],
            dangerMode: true,
            closeOnClickOutside: false,
        }).then((willDelete) => {
            if (willDelete) {
                window.location = "/sipesan/pengabdian/delete/" + pengabdianId + "";
            } else {
                swal(" Data pengabdian tidak jadi dihapus.");
            }
        });
    });

</script>
@endpush
