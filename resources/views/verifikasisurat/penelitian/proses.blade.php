@extends('layouts.master')

@section('content')
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1> Data Surat Penelitian Sedang Diproses </h1> 
        </div>
    </section>
    <div class="card">
        <div class="card-body">
            <table class="table table-hover table-responsive">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Skema</th>
                        @if((auth()->user()->hak_akses == 'admin') || (auth()->user()->hak_akses == 'staff'))
                        <th scope="col">Penandatangan</th>
                        @endif
                        <th scope="col">Judul</th>
                        <th scope="col">Jenis Surat</th>
                        <th scope="col">Nama Ketua</th>
                        <th scope="col">Status</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        @foreach ($suratpenelitian as $item)
                        <td>{{$loop->iteration}}</td>
                        @if((auth()->user()->hak_akses == 'admin') || (auth()->user()->hak_akses == 'staff'))
                        @if($item->status == "sedang diproses")
                        <td class="text-center">
                            <a href="/sipesan/surat/penelitian/{{$item->id_srtpenelitian}}/pilih/penandatangan"
                                class="bs-tooltip" data-toggle="tooltip" data-placement="top" title=""
                                data-original-title="Pilih Penandatangan">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" width="25" height="25">
                                    <g id="Digital_signature" data-name="Digital signature">
                                        <rect x="3" y="3" width="34" height="58" rx="4" style="fill:#3d9ae2" />
                                        <path
                                            d="M33,8V56a1,1,0,0,1-1,1H8a1,1,0,0,1-1-1V8A1,1,0,0,1,8,7h4a2.006,2.006,0,0,0,2,2H26a2.006,2.006,0,0,0,2-2h4A1,1,0,0,1,33,8Z"
                                            style="fill:#d1e7f8" />
                                        <path d="M25.6,48.43,32.2,43l2.31-4H30a2.974,2.974,0,0,1-1.98-.76L27,40Z"
                                            style="fill:#ffcd00" />
                                        <path
                                            d="M41,33a2.012,2.012,0,0,0,1.992-2.177A2.075,2.075,0,0,0,40.888,29H40.28l-2.31,4Z"
                                            style="fill:#ff9478" />
                                        <path
                                            d="M37.97,21H35.051a7,7,0,0,0-6.069,3.512L22.8,35.27A2,2,0,0,0,23.54,38a3.973,3.973,0,0,0,4.14-.1A3.022,3.022,0,0,1,27,36.03,3.162,3.162,0,0,1,30.184,33h.856L35,26.14Z"
                                            style="fill:#ffbcab" />
                                        <rect x="11" y="13" width="8" height="8" style="fill:none" />
                                        <polygon
                                            points="49.2 13.56 44 10.56 37.97 21 35 26.14 31.04 33 37.97 33 40.28 29 44.9 21 49.2 13.56"
                                            style="fill:#ffcd00" />
                                        <path d="M46.5,6.225,44,10.555l5.2,3,2.5-4.33a3,3,0,0,0-5.2-3Z"
                                            style="fill:#a7a9ac" />
                                        <rect x="11" y="13" width="8" height="8" style="fill:#ff9811" />
                                        <path
                                            d="M44.9,21h2.29A6,6,0,0,1,51.8,23.159l1.4,1.682A6,6,0,0,0,57.81,27H61V41H49.889a7.994,7.994,0,0,1-3.578-.845l-.622-.31A7.994,7.994,0,0,0,42.111,39H30a2.974,2.974,0,0,1-1.98-.76.806.806,0,0,1-.14-.12,2.089,2.089,0,0,1-.2-.22A3.022,3.022,0,0,1,27,36.03,3.162,3.162,0,0,1,30.184,33H41a2.012,2.012,0,0,0,1.992-2.177A2.075,2.075,0,0,0,40.888,29H40.28Z"
                                            style="fill:#ffbcab" />
                                        <path d="M7,33V56a1,1,0,0,0,1,1H31A23.986,23.986,0,0,1,7,33Z"
                                            style="fill:#9bc9ff" />
                                        <path
                                            d="M61,40H49.889a7.031,7.031,0,0,1-3.131-.739l-.622-.311A9.05,9.05,0,0,0,42.111,38H30a1.989,1.989,0,0,1-1.316-.508,2.1,2.1,0,0,1-.226-.221A2.013,2.013,0,0,1,28,36.02a1.879,1.879,0,0,1,.576-1.335A2.286,2.286,0,0,1,30.184,34H41a2.928,2.928,0,0,0,2.108-.874,2.966,2.966,0,0,0,.881-2.387,3.017,3.017,0,0,0-2.078-2.562L45.48,22h1.71a4.988,4.988,0,0,1,3.841,1.8l1.4,1.682A6.98,6.98,0,0,0,57.81,28H61a1,1,0,0,0,0-2H57.81a4.988,4.988,0,0,1-3.841-1.8l-1.4-1.682A6.98,6.98,0,0,0,47.19,20h-.555L52.562,9.725a4,4,0,0,0-6.928-4L38,18.95V7a5.006,5.006,0,0,0-5-5H7A5.006,5.006,0,0,0,2,7V57a5.006,5.006,0,0,0,5,5H33a5.006,5.006,0,0,0,5-5V40h4.111a7.031,7.031,0,0,1,3.131.739l.622.311a9.05,9.05,0,0,0,4.025.95H61a1,1,0,0,0,0-2ZM32,20.609a8.016,8.016,0,0,0-3.886,3.4l-6.18,10.755a3,3,0,0,0,1.105,4.1,4.951,4.951,0,0,0,2.485.67,4.864,4.864,0,0,0,.615-.044l0,.008a.967.967,0,0,0-.121.337l-1.4,8.431a1,1,0,0,0,1.621.936L32,44.46V56H8V8h3.171A3.006,3.006,0,0,0,14,10H26a3.006,3.006,0,0,0,2.829-2H32ZM32.777,40l-1.352,2.343-4.4,3.621.934-5.62.413-.714A3.935,3.935,0,0,0,30,40Zm-5.622-6.722A3.862,3.862,0,0,0,26,36.04a4.021,4.021,0,0,0,.27,1.383,2.951,2.951,0,0,1-2.233-.291,1,1,0,0,1-.37-1.364L29.849,25.01a6.014,6.014,0,0,1,5.2-3.01h1.187L30.462,32h-.278A4.3,4.3,0,0,0,27.155,33.278ZM40.888,30A1.082,1.082,0,0,1,42,30.907a.976.976,0,0,1-.3.8A.957.957,0,0,1,41,32H39.7l1.155-2Zm-3.495,2h-4.62L44.366,11.926l3.467,2ZM47.366,6.725a2,2,0,0,1,3.464,2l-2,3.464-3.464-2ZM36,57a3,3,0,0,1-3,3H7a3,3,0,0,1-3-3V7A3,3,0,0,1,7,4H33a3,3,0,0,1,3,3V20h-.949A7.974,7.974,0,0,0,34,20.07V8a2,2,0,0,0-2-2H28a1,1,0,0,0-1,1,1,1,0,0,1-1,1H14a1,1,0,0,1-1-1,1,1,0,0,0-1-1H8A2,2,0,0,0,6,8V56a2,2,0,0,0,2,2H32a2,2,0,0,0,2-2V42a.838.838,0,0,0-.018-.087L35.087,40H36Z" />
                                        <path
                                            d="M20.084,49.742l-1.214.809a3.493,3.493,0,0,0-6.453-2.622l-2.312,4.624a1,1,0,0,0,1.79.894l2.312-4.624a1.493,1.493,0,0,1,2.752,1.138l-.908,2.723a1,1,0,0,0,1.5,1.148l3.638-2.426a1,1,0,0,1,1.525.59l.312,1.247A1,1,0,0,0,24,54h5a1,1,0,0,0,0-2H24.781l-.122-.489a3,3,0,0,0-4.575-1.769Z" />
                                        <path
                                            d="M11,22h8a1,1,0,0,0,1-1V13a1,1,0,0,0-1-1H11a1,1,0,0,0-1,1v8A1,1,0,0,0,11,22Zm1-8h6v6H12Z" />
                                        <path d="M22,13a1,1,0,0,0,1,1h6a1,1,0,0,0,0-2H23A1,1,0,0,0,22,13Z" />
                                        <path d="M29,16H23a1,1,0,0,0,0,2h6a1,1,0,0,0,0-2Z" />
                                        <path d="M27,20H23a1,1,0,0,0,0,2h4a1,1,0,0,0,0-2Z" />
                                        <path d="M22,26H11a1,1,0,0,0,0,2H22a1,1,0,0,0,0-2Z" />
                                        <path d="M11,32h8a1,1,0,0,0,0-2H11a1,1,0,0,0,0,2Z" />
                                        <path d="M11,36h8a1,1,0,0,0,0-2H11a1,1,0,0,0,0,2Z" />
                                        <path d="M11,40h8a1,1,0,0,0,0-2H11a1,1,0,0,0,0,2Z" />
                                    </g>
                                </svg>
                            </a>
                        </td>
                        @else
                        <td class="text-center">
                            <?xml version="1.0"?>
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" width="25" height="25">
                                <g id="Digital_signature" data-name="Digital signature">
                                    <rect x="12" y="14" width="6" height="6" />
                                    <path
                                        d="M28.114,24.014A8.016,8.016,0,0,1,32,20.609V8H28.829A3.006,3.006,0,0,1,26,10H14a3.006,3.006,0,0,1-2.829-2H8V56H32V44.46L26.235,49.2a1,1,0,0,1-1.621-.936l1.4-8.431a.967.967,0,0,1,.121-.337l0-.008a4.864,4.864,0,0,1-.615.044,4.951,4.951,0,0,1-2.485-.67,3,3,0,0,1-1.105-4.1ZM23,12h6a1,1,0,0,1,0,2H23a1,1,0,0,1,0-2Zm0,4h6a1,1,0,0,1,0,2H23a1,1,0,0,1,0-2Zm0,4h4a1,1,0,0,1,0,2H23a1,1,0,0,1,0-2ZM10,13a1,1,0,0,1,1-1h8a1,1,0,0,1,1,1v8a1,1,0,0,1-1,1H11a1,1,0,0,1-1-1Zm1,21h8a1,1,0,0,1,0,2H11a1,1,0,0,1,0-2Zm-1-3a1,1,0,0,1,1-1h8a1,1,0,0,1,0,2H11A1,1,0,0,1,10,31Zm1,7h8a1,1,0,0,1,0,2H11a1,1,0,0,1,0-2ZM22.83,49.44a3.007,3.007,0,0,1,1.829,2.071l.122.489H29a1,1,0,0,1,0,2H24a1,1,0,0,1-.97-.757L22.718,52a1,1,0,0,0-1.525-.59l-3.638,2.426a1,1,0,0,1-1.5-1.148l.908-2.723a1.493,1.493,0,0,0-2.752-1.138L11.9,53.447a1,1,0,1,1-1.79-.894l2.312-4.624a3.493,3.493,0,0,1,6.453,2.622l1.214-.809A3,3,0,0,1,22.83,49.44ZM11,28a1,1,0,0,1,0-2H22a1,1,0,0,1,0,2Z" />
                                    <path
                                        d="M39.7,32H41a.957.957,0,0,0,.694-.288.976.976,0,0,0,.3-.8A1.082,1.082,0,0,0,40.888,30h-.03Z" />
                                    <path
                                        d="M32,58H8a2,2,0,0,1-2-2V8A2,2,0,0,1,8,6h4a1,1,0,0,1,1,1,1,1,0,0,0,1,1H26a1,1,0,0,0,1-1,1,1,0,0,1,1-1h4a2,2,0,0,1,2,2V20.07A7.974,7.974,0,0,1,35.051,20H36V7a3,3,0,0,0-3-3H7A3,3,0,0,0,4,7V57a3,3,0,0,0,3,3H33a3,3,0,0,0,3-3V40h-.913l-1.105,1.913A.838.838,0,0,1,34,42V56A2,2,0,0,1,32,58Z" />
                                    <polygon points="44.366 11.926 32.773 32 37.393 32 47.833 13.926 44.366 11.926" />
                                    <path d="M47.366,6.725l-2,3.464,3.464,2,2-3.464a2,2,0,0,0-3.464-2Z" />
                                    <path
                                        d="M57.81,28a6.98,6.98,0,0,1-5.377-2.519l-1.4-1.682A4.988,4.988,0,0,0,47.19,22H45.48l-3.569,6.177a3.017,3.017,0,0,1,2.078,2.562,2.966,2.966,0,0,1-.881,2.387A2.928,2.928,0,0,1,41,34H30.184a2.286,2.286,0,0,0-1.608.685A1.879,1.879,0,0,0,28,36.02a2.013,2.013,0,0,0,.458,1.251,2.1,2.1,0,0,0,.226.221A1.989,1.989,0,0,0,30,38H42.111a9.05,9.05,0,0,1,4.025.95l.622.311A7.031,7.031,0,0,0,49.889,40H61V28Z" />
                                    <path
                                        d="M30.462,32l5.776-10H35.051a6.014,6.014,0,0,0-5.2,3.01L23.667,35.768a1,1,0,0,0,.37,1.364,2.951,2.951,0,0,0,2.233.291A4.021,4.021,0,0,1,26,36.04a3.862,3.862,0,0,1,1.155-2.762A4.3,4.3,0,0,1,30.184,32Z" />
                                    <path
                                        d="M28.37,39.63l-.413.714-.934,5.62,4.4-3.621L32.777,40H30A3.935,3.935,0,0,1,28.37,39.63Z" />
                                </g>
                            </svg>
                        </td>
                        @endif
                        @endif
                        <td>{{$item->penelitian['skema_penelitian']}}</td>
                        <td>{{$item->penelitian['judul_penelitian']}}</td>
                        <td>{{$item->jenis_suratpenelitian}}</td>
                        <td>{{$item->penelitian->user['nama_user']}}</td>
                        <td>
                            @if($item->status=="dalam antrean")
                            <span class="badge badge-danger">{{$item->status}}</span>
                            @elseif($item->status=="sedang diproses")
                            <span class="badge badge-warning">{{$item->status}}</span>
                            @elseif($item->status=="selesai")
                            <span class="badge badge-success">{{$item->status}}</span>
                            @endif
                        </td>
                        <td>
                            <div class='d-flex flex-row bd-highlight'>
                                @if((auth()->user()->hak_akses == 'admin') || (auth()->user()->hak_akses == 'staff'))
                                <a href='/sipesan/surat/penelitian/{{ $item->id_srtpenelitian }}/edit'
                                    class="btn btn-sm btn-primary ml-1"><i class="fas fa-edit"></i></a>
                                @endif

                                <a href="#" srtpenelitian-id="{{ $item->id_srtpenelitian }}"
                                    srtpenelitian-jenis="{{ $item->jenis_suratpenelitian }}"
                                    class="deleteSrtPenelitian btn btn-sm btn-danger ml-1"><i
                                        class="far fa-trash-alt"></i></a>

                                <a href='/sipesan/surat/penelitian/{{$item->id_srtpenelitian}}/detail'
                                    class="btn btn-sm btn-info ml-1"><i class="fas fa-info"></i></a>

                                <a href='/sipesan/surat/penelitian/{{ $item->id_srtpenelitian }}/cetak'
                                    class="btn btn-sm btn-primary ml-1"><i class="fas fa-print"></i></a>
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
    $('.deleteSrtPenelitian').click(function () {
        var srtpenelitianId = $(this).attr('srtpenelitian-id');
        swal({
            title: "Hapus Data Surat Penelitian",
            text: "Apakah anda yakin ingin menghapus data surat penelitian ini ? ",
            icon: "warning",
            buttons: ["Jangan Hapus", "Hapus"],
            dangerMode: true,
            closeOnClickOutside: false,
        }).then((willDelete) => {
            if (willDelete) {
                window.location = "/sipesan/surat/penelitian/delete/" + srtpenelitianId + "";
            } else {
                swal(" Data surat penelitian tidak jadi dihapus.");
            }
        });
    });

</script>
@endpush
