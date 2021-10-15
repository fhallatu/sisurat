@extends('layouts.master')

@section('content')
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1> Data Surat Pengabdian Sedang Dalam Antrean</h1>
        </div>
    </section>
    <div class="card">
        <div class="card-body">
            <table class="table table-hover table-responsive">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        @if((auth()->user()->hak_akses == 'admin') || (auth()->user()->hak_akses == 'staff'))
                        <th scope="col">Verifikasi</th>
                        @endif
                        <th scope="col">Skema</th>
                        <th scope="col">Judul</th>
                        <th scope="col">Jenis Surat</th>
                        <th scope="col">Jenis Surat Tugas</th>
                        <th scope="col">Nama Ketua</th>
                        <th scope="col">Status</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        @foreach ($suratpengabdian as $item)
                        <td>{{$loop->iteration}}</td>
                        @if((auth()->user()->hak_akses == 'admin') || (auth()->user()->hak_akses =='staff'))
                        @if($item->status == "dalam antrean")
                        <td class="text-center">
                            <a href="{{ url('/sipesan/surat/pengabdian/updatestatus/'.$item->id_srtpengabdian, []) }}"
                                class="bs-tooltip" data-toggle="tooltip" data-placement="top" title=""
                                data-original-title="Verifikasi">
                                <svg height="20pt" viewBox="0 -21 512.00533 512" width="20pt"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="m306.582031 317.25c-12.074219 12.097656-28.160156 18.753906-45.25 18.753906-17.085937 0-33.171875-6.65625-45.246093-18.753906l-90.667969-90.664062c-12.09375-12.078126-18.75-28.160157-18.75-45.25 0-17.089844 6.65625-33.171876 18.75-45.246094 12.074219-12.097656 28.160156-18.753906 45.25-18.753906 17.085937 0 33.171875 6.65625 45.246093 18.753906l45.417969 45.394531 125.378907-125.375c-40.960938-34.921875-93.996094-56.10546875-152.042969-56.10546875-129.601563 0-234.667969 105.06640575-234.667969 234.66406275 0 129.601562 105.066406 234.667969 234.667969 234.667969 129.597656 0 234.664062-105.066407 234.664062-234.667969 0-24.253907-3.6875-47.636719-10.515625-69.652344zm0 0"
                                        fill="#4caf50" />
                                    <path
                                        d="m261.332031 293.335938c-5.460937 0-10.921875-2.089844-15.082031-6.25l-90.664062-90.667969c-8.34375-8.339844-8.34375-21.824219 0-30.164063 8.339843-8.34375 21.820312-8.34375 30.164062 0l75.582031 75.582032 214.253907-214.25c8.339843-8.339844 21.820312-8.339844 30.164062 0 8.339844 8.34375 8.339844 21.824218 0 30.167968l-229.335938 229.332032c-4.15625 4.160156-9.621093 6.25-15.082031 6.25zm0 0"
                                        fill="#2196f3" /></svg>
                            </a>
                        </td>
                        @else
                        <td class="text-center">
                            <svg height="20pt" viewBox="0 -21 512.00533 512" width="20pt"
                                xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="m306.582031 317.25c-12.074219 12.097656-28.160156 18.753906-45.25 18.753906-17.085937 0-33.171875-6.65625-45.246093-18.753906l-90.667969-90.664062c-12.09375-12.078126-18.75-28.160157-18.75-45.25 0-17.089844 6.65625-33.171876 18.75-45.246094 12.074219-12.097656 28.160156-18.753906 45.25-18.753906 17.085937 0 33.171875 6.65625 45.246093 18.753906l45.417969 45.394531 125.378907-125.375c-40.960938-34.921875-93.996094-56.10546875-152.042969-56.10546875-129.601563 0-234.667969 105.06640575-234.667969 234.66406275 0 129.601562 105.066406 234.667969 234.667969 234.667969 129.597656 0 234.664062-105.066407 234.664062-234.667969 0-24.253907-3.6875-47.636719-10.515625-69.652344zm0 0" />
                                <path
                                    d="m261.332031 293.335938c-5.460937 0-10.921875-2.089844-15.082031-6.25l-90.664062-90.667969c-8.34375-8.339844-8.34375-21.824219 0-30.164063 8.339843-8.34375 21.820312-8.34375 30.164062 0l75.582031 75.582032 214.253907-214.25c8.339843-8.339844 21.820312-8.339844 30.164062 0 8.339844 8.34375 8.339844 21.824218 0 30.167968l-229.335938 229.332032c-4.15625 4.160156-9.621093 6.25-15.082031 6.25zm0 0" />
                                </svg>
                        </td>
                        @endif
                        @endif
                        <td>{{$item->pengabdian['skema_pengabdian']}}</td>
                        <td>{{$item->pengabdian['judul_pengabdian']}}</td>
                        <td>{{$item->jenis_suratpengabdian}}</td>
                        <td>{{$item->jenis_surattugas}}</td>
                        <td>{{$item->pengabdian->user['nama_user']}}</td>
                        <td>
                            @if($item->status=="upload file")
                            <span class="badge badge-info">{{$item->status}}</span>
                            @elseif($item->status=="dalam antrean")
                            <span class="badge badge-danger">{{$item->status}}</span>
                            @elseif($item->status=="sedang diproses")
                            <span class="badge badge-warning">{{$item->status}}</span>
                            @elseif($item->status=="selesai")
                            <span class="badge badge-success">{{$item->status}}</span>
                            @endif
                        </td>
                        <td>
                            <div class='d-flex flex-row bd-highlight'>
                                <a href="#" srtpengabdian-id="{{ $item->id_srtpengabdian }}"
                                    srtpengabdian-jenis="{{ $item->jenis_suratpengabdian }}"
                                    class="deleteSrtPengabdian btn btn-sm btn-danger ml-1"><i
                                        class="far fa-trash-alt"></i></a>

                                <a href='/sipesan/surat/pengabdiann/{{$item->id_srtpengabdian}}/detail' class="btn btn-sm btn-info ml-1"><i
                                        class="fas fa-info"></i></a>
                            </div>
                        </td>
                    </tr>
                    @endforeach

                </tbody>
            </table>
        </div>
    </div>
</div>



@endsection

@push('script')
<script>
    $('.deleteSrtPengabdian').click(function () {
        var srtpengabdianId = $(this).attr('srtpengabdian-id');
        swal({
            title: "Hapus Data Surat Pengabdian",
            text: "Apakah anda yakin ingin menghapus data surat pengabdian ini ? ",
            icon: "warning",
            buttons: ["Jangan Hapus", "Hapus"],
            dangerMode: true,
            closeOnClickOutside: false,
        }).then((willDelete) => {
            if (willDelete) {
                window.location = "/sipesan/surat/pengabdian/delete/" + srtpengabdianId + "";
            } else {
                swal(" Data surat pengabdian tidak jadi dihapus.");
            }
        });
    });

</script>
@endpush
