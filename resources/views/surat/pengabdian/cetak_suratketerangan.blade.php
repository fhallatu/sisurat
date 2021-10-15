<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Surat Tugas Pengabdian Berdasarkan Surat Permohonan Mitra</title>
</head>

<body>
    <div class="form-group">
        <table border="0" align="center" width="100%">
            <tr>
                <td>
                    <center>
                        <img src="{{ asset('logo_unib/logo_unib.png') }}" width="120" height="120">
                    </center>
                </td>
                <td>
                    <center>
                        <font size="4,5" face="Times New Roman" style="color: rgb(0, 0, 0)">KEMENTERIAN PENDIDIKAN
                            DAN KEBUDAYAAN</font><br>
                        <font size="4,5" face="Times New Roman" style="color: rgb(0, 0, 0)">UNIVERSITAS BENGKULU
                        </font><br>
                        <font size="3.5" face="Times New Roman" style="color: rgb(0, 0, 0)"><strong>LEMBAGA
                                PENGABDIAN DAN
                                PENGABDIAN KEPADA MASYARAKAT</strong></font><br>
                        <font size="2" face="Times New Roman" style="color: rgb(0, 0, 0)">Gedung B, Jalan WR
                            Supratman Kandang Limun Bengkulu 38371</font><br>
                        <font size="2" face="Times New Roman" style="color: rgb(0, 0, 0)">Laman : </font>
                        <font size="2" style="color: blue" face="Times New Roman"><u>http://www.unib.ac.id</u>
                        </font>
                        <font size="2" style="color: rgb(0, 0, 0)" face="Times New Roman">&nbsp E-mail : </font>
                        <font size="2" style="color: blue" face="Times New Roman"><u>lppm@unib.ac.id</u></font>
                    </center>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="color:black">
                    <hr color="black" width="100%" align="center" />
                </td>
            </tr>
        </table>
        <table border="0" align="center" width="100%">
            <tr>
                <td>
                    <center>
                        <font size="3" style="color: rgb(0, 0, 0)" face="Times New Roman"><u><strong>SURAT
                                    KETERANGAN</strong></u></font><br>
                        <font size="3" style="color: rgb(0, 0, 0)" face="Times New Roman">
                            NO.&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp/UN30.15/PG/2021
                        </font>
                    </center>
                </td>
        </table>
        <table border="0" align="center">
            <tr>
                <td height="30"></td>
            </tr>
            <tr>
                <td align="justify">
                    <justify>
                        <font size="3" style="color: rgb(0, 0, 0)" face="Times New Roman">Berdaarkan surat keterangan
                            dari {{ $srtpengabdian->nama_mitra }} Nomor {{ $srtpengabdian->no_srt_mitra }} Tanggal
                            {{ $tgl_mitra }}. Ketua Lembaga Pengabdian dan Pengabdian Kepada
                            Masyarakat Universitas Bengkulu, menerangkan bahwa :
                        </font><br>
                    </justify>
                </td>
            </tr>
            <tr>
                <td height="20"></td>
            </tr>
        </table>
        <div class="table-responsive">
            <table border="1" align="center" width="100%">
                <thead>
                    <tr align="center">
                        <th scope="col">No.</th>
                        <th scope="col">Nama</th>
                        <th scope="col">NIP</th>
                        <th scope="col">Fakultas</th>
                        <th scope="col">Keterangan</th>
                    </tr>
                </thead>
                <tbody>
                    <tr align="center">
                        <td>1</td>
                        <td>{{$srtpengabdian->pengabdian->user->nama_user}}</td>
                        <td>{{$srtpengabdian->pengabdian->user->nip_user}}</td>
                        <td>{{$srtpengabdian->pengabdian->user->fakultas_user}}</td>
                        <td>Ketua</td>
                    </tr>
                    <?php $no = 1;?>
                    @foreach ($anggotapengabdian as $item)
                    <?php $no++ ;?>
                    <tr align="center">
                        <td width="10%">{{$no}}</td>
                        <td width="20%">{{$item->nama_anggota}}</td>
                        <td width="20%">{{$item->no_identitas}}</td>
                        <td width="20%">{{$item->fakultas_anggota}}</td>
                        <td width="20%">Anggota</td>
                    </tr>
                    @endforeach
            </table>
        </div>
        <table border="0" align="center" width="100%">
            <tr>
                <td height="10"></td>
            </tr>
            <tr>
                <td align="justify">
                    <justify>
                        <font size="3" style="color: rgb(0, 0, 0)" face="Times New Roman">Benar - benar telah
                            melaksanakan kegiatan Pengabdian Kepada Masyarakat dengan materi "
                            {{ $srtpengabdian->pengabdian->judul_pengabdian }} ".
                    </justify>
                </td>
            </tr>
            <tr>
                <td height="10"></td>
            </tr>
            <tr>
                <td align="justify">
                    <justify>
                        <font size="3" style="color: rgb(0, 0, 0)" face="Times New Roman">Demikian surat keterangan ini
                            dibuat untuk dipergunakan sebagaimana mestinya.
                    </justify>
                </td>
            </tr>
            <tr>
                <td height="10"></td>
            </tr>
        </table>
        <table border="0" align="center" width="100%">
            <tr>
                <td height="30"></td>
            </tr>
            <tr>
                <td width="70%"></td>
                <td> Bengkulu,
                    {{ $tanggalNow }} 
                    {{ $bulanNow == 'January' ? 'Januari' : '' }}
                    {{ $bulanNow == 'February' ? 'Februari' : '' }}
                    {{ $bulanNow == 'March' ? 'Maret' : '' }}
                    {{ $bulanNow == 'April' ? 'April' : '' }}
                    {{ $bulanNow == 'May' ? 'Mei' : '' }}
                    {{ $bulanNow == 'June' ? 'Juni' : '' }}
                    {{ $bulanNow == 'July' ? 'Juli' : '' }}
                    {{ $bulanNow == 'August' ? 'Agustus' : '' }}
                    {{ $bulanNow == 'September' ? 'September' : '' }}
                    {{ $bulanNow == 'October' ? 'Oktober' : '' }}
                    {{ $bulanNow == 'November' ? 'November' : '' }}
                    {{ $bulanNow == 'December' ? 'Desember' : '' }} 
                    {{ $tahunNow }}
                </td>
            </tr>
            <tr>
                <td width="70%"></td>
                <td>an. Ketua</td>
            </tr>
            <tr>
                <td width="70%"></td>
                <td>Sekretaris Bid.Pengabdian</td>
            </tr>
            <tr>
                <td height="60"></td>
            </tr>
            <tr>
                <td width="70%"></td>
                <td>{{ $srtpengabdian->penandatangan->nama_penandatangan }}</td>
            </tr>
            <tr>
                <td width="70%"></td>
                <td>NIP {{ $srtpengabdian->penandatangan->nip_penandatangan }}</td>
            </tr>
        </table>
    </div>
</body>

</html>

<script type="text/javascript">
	window.print();
</script>
