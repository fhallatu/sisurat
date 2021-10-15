-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jul 2021 pada 14.53
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipesan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggotapenelitian`
--

CREATE TABLE `anggotapenelitian` (
  `id_anggota` int(11) NOT NULL,
  `nama_anggota` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_identitas` char(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prodi_anggota` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fakultas_anggota` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggotapengabdian`
--

CREATE TABLE `anggotapengabdian` (
  `id_anggota` int(11) NOT NULL,
  `nama_anggota` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_identitas` char(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prodi_anggota` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fakultas_anggota` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(24, '2014_10_12_100000_create_password_resets_table', 1),
(25, '2019_08_19_000000_create_failed_jobs_table', 1),
(34, '2014_10_12_000000_create_users_table', 1),
(41, '2021_05_28_062305_pengabdiananggota_tabel', 2),
(42, '2021_05_28_062341_pengabdiananggota_table', 2),
(45, '2021_05_22_161203_create_penelitian_table', 3),
(46, '2021_05_22_161229_create_pengabdian_table', 3),
(47, '2021_05_22_161308_create_anggotapenelitian_table', 3),
(48, '2021_05_22_161346_create_suratpenelitian_table', 3),
(49, '2021_05_22_161402_create_suratpengabdian_table', 3),
(50, '2021_05_28_060844_create_anggotapengabdian_table', 3),
(51, '2021_05_28_062023_create_penelitiananggota_table', 3),
(52, '2021_05_28_062441_create_pengabdiananggota_table', 3),
(53, '2021_06_28_144737_create_penandatangan_tabel', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penandatangan`
--

CREATE TABLE `penandatangan` (
  `id_penandatangan` int(11) NOT NULL,
  `nama_penandatangan` varchar(100) NOT NULL,
  `nip_penandatangan` varchar(32) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penandatangan`
--

INSERT INTO `penandatangan` (`id_penandatangan`, `nama_penandatangan`, `nip_penandatangan`, `jabatan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Dr. Ir. Hery Suhartoyo, M.Sc', '196306251987031000', 'Ketua Lembaga Penelitian dan Pengabdian kepada Masyarakat Universitas Bengkulu', NULL, NULL, NULL),
(3, 'Basuki Sigit Priyono', '196008281986091000', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penelitian`
--

CREATE TABLE `penelitian` (
  `id_penelitian` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tahun_penelitian` int(11) DEFAULT NULL,
  `skema_penelitian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_penelitian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penelitian`
--

INSERT INTO `penelitian` (`id_penelitian`, `id_user`, `tahun_penelitian`, `skema_penelitian`, `judul_penelitian`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 20, 2020, 'Penelitian Terapan Unggulan Perguruan Tinggi', 'PENGEMBANGAN PENGERING HIBRID UNTUK PENGERINGAN KOPI GELONDONG', NULL, '2021-06-28 16:30:02', NULL),
(2, 119, 2020, 'Penelitian Terapan Unggulan Perguruan Tinggi   ', 'MODELING PREDIKSI KARAKTERISTIK KELEMBABAN TANAH SKALA WILAYAH KABUPATEN DI PROVINSI BENGKULU MELALUI PENERAPAN TEKNOLOGI PENGUKUR SIFAT DIELEKTRIK TANAH', NULL, NULL, NULL),
(3, 813, 2020, 'Penelitian Dasar Unggulan Perguruan Tinggi  ', 'OPTIMASI PERFORMANCE GENERATOR SINKRON GERAK TRANSLASI DAN ROTASI DENGAN MEMANFAATKAN PEMBANGKIT LISTRIK TENAGA GELOMBANG LAUT MENGGUNAKAN  MEKANISME PNEUMATIK UNTUK MASYARAKAT NELAYAN KOTA BENGKULU', NULL, NULL, NULL),
(4, 52, 2020, 'Penelitian Dasar Unggulan Perguruan Tinggi   ', 'Islam dalam Tradisi Tulis Ulu di Bengkulu: Kajian Atas Teks-teks Tauhid dalam Naskah-naskah Beraksara Ulu ', NULL, NULL, NULL),
(5, 401, 2020, 'Penelitian Dasar   ', 'DEVELOPING BIRD MANAGEMENT OF WHITE- RUMPED SHAMA (Copsychus malabaricus) THROUGH  REPRODUCTIVE BEHAVIOR  AND MICRONUTRIENTS TECHNIQUE', NULL, NULL, NULL),
(6, 389, 2020, 'Penelitian Dasar   ', 'Evaluasi Nilai Gizi dan Kecernaan Lumpur Sawit Produk Biokonversi Pleurotus ostreatus sebagai Pakan Konsentrat  Ruminansia', NULL, NULL, NULL),
(7, 195, 2020, 'Penelitian Dasar', 'Potensi Tumbuhan  Kayu Gadis (Cinnamomum parthenoxylon) sebagai Pestisida Botani (II), Kajian Minyak Atsiri, Ekstrak, dan Asap Cair sebagai Anti Rayap dan Anti Jamur Pelapuk Kayu', NULL, '2021-06-29 00:01:56', NULL),
(8, 162, 2020, 'Penelitian Dasar', 'Efek Detoksifikasi Ekstrak Etanol Daun Etlingera hemisphaerica Pada Profil Proteomik Tikus (Rattus nonverigus) yang Terdedah Merkuri Klorida', NULL, '2021-06-29 00:03:07', NULL),
(9, 289, 2020, 'Penelitian Terapan ', 'PERAKITAN PADI GOGO TIPE BARU TOLERAN KEKERINGAN DAN TAHAN BLAS', NULL, NULL, NULL),
(10, 35, 2020, 'Penelitian Terapan  ', 'REKAYASA TEKNOLOGI BUDIDAYA UNTUK OPTIMALISASI PRODUKSI HIBRIDA CABAI MERAH UNGGUL DI LAHAN ULTISOL', NULL, NULL, NULL),
(11, 353, 2020, 'Penelitian Terapan  ', 'Nanopartikel  Perak Ektrak Melastoma Malabatricum  dan Poly-herbal sebagai Anti Helminthiasis dan  Productivity Enhancer Untuk Menunjang Sistem Integrasi Ternak-Sawit Di Bengkulu', NULL, NULL, NULL),
(12, 216, 2020, 'Penelitian Tesis Magister', 'ANALISIS PENCAPAIAN STANDAR NASIONAL PENDIDIKAN DI SEKOLAH DASAR', NULL, NULL, NULL),
(13, 6, 2020, 'Penelitian Tesis Magister', 'Gaya Argumen dan Ciri Linguistik dalam Bagian Pembahasan Artikel Jurnal Lokal, Nasional Terakreditasi dan Internasional Bereputasi Berbahasa Inggris oleh Penulis Indonesia dalam Bidang Ilmu Pengajaran Bahasa Inggris', NULL, NULL, NULL),
(14, 247, 2020, 'Penelitian Tesis Magister', 'Model Pendekatan Eksplorasi untuk Meningkatkan Kemampuan Berpikir Kritis dan Kreatif Matematik\n', NULL, NULL, NULL),
(15, 334, 2020, 'Penelitian Tesis Magister', 'Pemanfaatan teknik kemometri untuk identifikasi berbagai campuran minyak ', NULL, NULL, NULL),
(16, 6, 2020, 'Penelitian Tesis Magister', 'Studi Komparatif Tentang Pola Retorika dan Fitur Linguistik Abstrak Artikel Jurnal Lokal, Nasional dan Internasioanl oleh Penulis Indonesia dalam Bidang Pengajaran Bahasa Inggris', NULL, NULL, NULL),
(17, 491, 2020, 'Penelitian Unggulan UNIB', 'Desain Model Manajemen Risiko Penganggaran Belanja Tak Terduga (BTT) Penanganan Dampak Covid-19', NULL, NULL, NULL),
(18, 74, 2020, 'Penelitian Unggulan UNIB', 'Peranan Moderasi Integritas Pemimpin dalam Menjelaskan Hubungan Persepsi Politik Organisasi, Stres Kerja Karyawan, Perilaku Inovatif Karyawan, dan Kinerja Organisasi Publik', NULL, NULL, NULL),
(19, 309, 2020, 'Penelitian Unggulan UNIB', 'Kajian Tanggung Jawab Sosial dan Lingkungan UMKM Kota Bengkulu', NULL, NULL, NULL),
(20, 24, 2020, 'Penelitian Unggulan UNIB', 'Model Kebijakan Mitigasi Bencana Terhadap Kawasan Permukiman Rawan Bencana Longsor di Kabupaten Lebong: Studi Kasus Desa Sukasari Kecamatan Lebong Selatan', NULL, NULL, NULL),
(21, 454, 2020, 'Penelitian Unggulan UNIB', 'Model Pengelolaan Sampah Plastik Guna Mendukung Program Wisata Kawasan Pesisir Provinsi Bengkulu', NULL, NULL, NULL),
(22, 263, 2020, 'Penelitian Unggulan UNIB', 'Model Penegakan Hukum Dalam Pemberantasan Alat Tangkap Trawls Sebagai Upaya Pemenuhan SDG?s 14: Blue Economy', NULL, NULL, NULL),
(23, 60, 2020, 'Penelitian Unggulan UNIB', 'Model Pengaturan Lahan Pertanian Pangan Berkelanjutan Dalam Mewujudkan Ketahanan Pangan Di Kabupaten Lebong', NULL, NULL, NULL),
(24, 91, 2020, 'Penelitian Unggulan UNIB', 'Peranan Badan Usaha Milik Desa (Bumdes) Dalam Penguatan Ketahanan Masyarakat Pedesaan Pasca Bencana Wabah Penyakit Covid 19', NULL, NULL, NULL),
(25, 138, 2020, 'Penelitian Unggulan UNIB', 'Pengembangan Model Pengokohan Ketahanan Ekonomi Rumah Tangga Rentan Miskin Pasca Masa Tanggap Darurat Covid-19', NULL, NULL, NULL),
(26, 419, 2020, 'Penelitian Unggulan UNIB', 'Model Penetrasi Media Internet Dan Literasi Digital Masyarakat Provinsi Bengkulu Tentang Informasi Covid-19 Di Masa Darurat Kesehatan', NULL, NULL, NULL),
(27, 207, 2020, 'Penelitian Unggulan UNIB', 'Pengembangan Bahan Ajar Pre-TOEFL Berbasis TBLT (Task-Based Language Teaching) Sebagai Upaya Akselerasi Kompetensi Berbahasa Inggris Mahasiswa Universitas Bengkulu', NULL, NULL, NULL),
(28, 580, 2020, 'Penelitian Unggulan UNIB', 'Pengembangan Model Pembelajaran Tematik Terpadu Berbasis Permainan Tradisional Bengkulu Untuk Meningkatkan Pengetahuan  Mitigasi Bencana Gempa Bumi Untuk Siswa Sekolah Dasar', NULL, NULL, NULL),
(29, 261, 2020, 'Penelitian Unggulan UNIB', 'Hubungan Persepsi Pelatih-Atlet Terhadap Covid-19, Komunikasi Pelatih-Atlet, Karakteristik Psikologis Atlet, Dan Prestasi Atlet  PON Bengkulu Di PON XX Papua 2020', NULL, NULL, NULL),
(30, 425, 2020, 'Penelitian Unggulan UNIB', 'Analisis Pengetahuan Guru Bahasa Inggris Di Provinsi Bengkulu Tentang Keterampilan Berpikir Tingkat Tinggi (Higher Order Thinking Skill) Dalam Kurikulum 2013', NULL, NULL, NULL),
(31, 432, 2020, 'Penelitian Unggulan UNIB', 'Transformasi Nilai-nilai Kearifan Budaya Lokal Musik Tradisional Masyarakat Pesisir Bengkulu', NULL, '2021-06-29 00:04:18', NULL),
(32, 149, 2020, 'Penelitian Unggulan UNIB', 'Pengembangan Paket Instruksional Digital Pendidikan Ekowisata Berorientasi Konservasi Lingkungan Di Bengkulu', NULL, '2021-06-29 00:05:32', NULL),
(33, 349, 2020, 'Penelitian Unggulan UNIB', 'Studi Deskriptif Sikap Kesiapsiagaan Bencana Banjir Anak Usia SD Ditinjau Dari Segi Etnis Di DAS Kota Bengkulu', NULL, '2021-06-29 00:05:55', NULL),
(34, 133, 2020, 'Penelitian Unggulan UNIB', 'Uji Aktivitas Tabir Surya Ekstrak Tanaman Obat Tradisional Masyarakat Bengkulu Yang Mengandung Flavonoid Dan Pemanfaatannya Sebagai Krim Kosmetik', NULL, '2021-06-29 00:06:25', NULL),
(35, 310, 2020, 'Penelitian Unggulan UNIB', 'Pengembangan Model Matematika untuk Perencanaan Evakuasi Tsunami Sebagai Upaya  Mitigasi Bencana di Kecamatan Teluk Segara Kota Bengkulu', NULL, '2021-06-29 00:06:59', NULL),
(36, 813, 2020, 'Penelitian Unggulan UNIB', 'Karakter Molekuler Dan Evolusi Beo Enggano Gracula religiosa L. 1758 Berdasarkan DNA Mitokondria Untuk Mencegah Perdagangan Ilegalnya Di Indonesia', NULL, NULL, NULL),
(37, 510, 2020, 'Penelitian Unggulan UNIB', 'Pemetaan 2D dan 3D Earth Resistivity Tomography Akuifer Di Daerah Potensial Air Tanah Desa Barumanis Kecamatan Bermani Ulu, Rejang Lebong', NULL, '2021-06-29 00:08:03', NULL),
(38, 104, 2020, 'Penelitian Unggulan UNIB', 'Investigasi Potensi Longsor Berdasarkan Parameter Fisis Ground Shear Strain (GSS) Dan Analytical Hierarchy Process (AHP) Untuk Pengurangan Risiko Bencana Di Kabupaten Bengkulu Tengah, Provinsi Bengkulu', NULL, '2021-06-29 00:08:31', NULL),
(39, 291, 2020, 'Penelitian Unggulan UNIB', 'Immobilisasi Eritrosit Manusia Pada Kaca Cover Slip Mikroskop Berlapis  Fraksi Protein Biji Melinjo', NULL, '2021-06-29 00:09:08', NULL),
(40, 643, 2020, 'Penelitian Unggulan UNIB', 'Pengaruh Bentuk Dan Orientasi Atap Bangunan Terhadap Efisiensi Penyerapan Energi Matahari Oleh Panel Surya Untuk Mencapai Kemandirian Energi Daerah Pesisir', NULL, '2021-06-29 00:10:32', NULL),
(41, 79, 2020, 'Penelitian Unggulan UNIB', 'Skrining Dan Potensi Bakteri Endofit  Dari Tanaman Jahe Enggano (Zingber engganoensis) dan Jahe Merah (Zingiber officinale) Asal Pulau Enggano Sebagai Penghasil Antimikrob Dan Anticendawan', NULL, '2021-06-29 00:11:04', NULL),
(42, 265, 2020, 'Penelitian Unggulan UNIB', 'Kajian pola mortalitas, pertumbuhan dan modelling populasi Rafflesia arnoldii R.Br dengan matrik transisi Lefkovitch untuk mendukung Konservasi dan ekowisata Bengkulu', NULL, '2021-06-29 00:11:43', NULL),
(43, 330, 2020, 'Penelitian Unggulan UNIB', 'Efisiensi Serapan Dan Penggunaan Hara Pada  Jagung Manis Dalam Sistem Budidaya Organik', NULL, '2021-06-29 00:12:16', NULL),
(44, 11, 2020, 'Penelitian Unggulan UNIB', 'Uji Stabilitas Suplementasi Pupuk Organik Cair Lokal Terhadap Pemupukan Vermikompos Untuk Meningkatkan Kualitas Tanah Pada Sistem Pertanian Tertutup Berbasis Jagung Manis Di Dataran Tinggi', NULL, '2021-06-29 00:12:35', NULL),
(45, 34, 2020, 'Penelitian Unggulan UNIB', 'Kinerja, Risiko Dan Keberlanjutan Industri Rumah Tangga Pengolahan Ikan Kering Di Provinsi Bengkulu', NULL, '2021-06-29 00:12:55', NULL),
(46, 21, 2020, 'Penelitian Unggulan UNIB', 'Presisi Model Kekritisan Daerah Resapan Air Untuk Antisipasi Banjir Di Bagian Barat Provinsi Bengkulu', NULL, '2021-06-29 00:13:22', NULL),
(47, 5, 2020, 'Penelitian Unggulan UNIB', 'Uji Alelopati Sorgum Pada Gulma Di Lahan Pesisir', NULL, '2021-06-29 00:13:46', NULL),
(48, 416, 2020, 'Penelitian Unggulan UNIB', 'Kajian Potensi Pola Agroforestri Kelapa Sawit Rakyat Dalam Konservasi  Jenis Tumbuhan Dan Hewan Tropika Di Provinsi Bengkulu', NULL, '2021-06-29 00:14:09', NULL),
(49, 266, 2020, 'Penelitian Unggulan UNIB', 'Karakteristik Agronomi 10 Galur Padi Rawa Hasil Persilangan Padi Rawa Lokal Bengkulu Di Dua Tipologi Rawa Lebak', NULL, '2021-06-29 00:14:33', NULL),
(50, 168, 2020, 'Penelitian Unggulan UNIB', 'Analisis Kelayakan Ekologis dan  Tingkat Efektifitas Pengelolaan Taman Wisata Alam (TWA) Air Seblat di Provinsi Bengkulu', NULL, '2021-06-29 00:15:04', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penelitiananggota`
--

CREATE TABLE `penelitiananggota` (
  `id_penelitiananggota` int(11) NOT NULL,
  `penelitian_id_penelitian` int(11) NOT NULL,
  `anggotapenelitians_id_anggota` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengabdian`
--

CREATE TABLE `pengabdian` (
  `id_pengabdian` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tahun_pengabdian` int(11) DEFAULT NULL,
  `skema_pengabdian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_pengabdian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengabdian`
--

INSERT INTO `pengabdian` (`id_pengabdian`, `id_user`, `tahun_pengabdian`, `skema_pengabdian`, `judul_pengabdian`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 799, 2020, 'Program Kemitraan Masyarakat', 'PKM Pemberdayaan dan Peningkatan Kapasitas Kelompok Masyarakat Lintas Komunitas Seni Melalui Digital Innovative Product dan Smart Management Menuju Masyarakat Mandiri Ekonomi di Kelurahan Kebun Keling Kecamatan Teluk Segara Kota Bengkulu', NULL, NULL, NULL),
(2, 177, 2020, 'Skema Penerapan Teknologi Tepat Guna', 'Penerapan Teknologi Bioflok Budidaya Ikan Lele Pada Kelompok Pembudidaya Ikan Di Kelurahan Bentiring Permai Kecamatan Muara Bangkahulu Kota Bengkulu', NULL, NULL, NULL),
(3, 555, 2020, 'Pengabdian Kepada Masyarakat Berbasis Ipteks (tema covid-19)', 'Pembuatan Sistem Less Hand Touch Otomatis Dalam Upaya Mengurangi Penyebaran Covid 19', NULL, NULL, NULL),
(4, 694, 2020, 'Pengabdian Kepada Masyarakat Berbasis Ipteks (tema covid-19)', 'Pemanfaatan Tanaman Obat Keluarga (TOGA) dalam Pembuatan Jamu untuk Meningkatkan Imunitas Tubuh bagi Mahasiswa UNIB dan Masyarakat di Kelurahan Pematang Gubernur sebagai Pencegahan Covid-19', NULL, NULL, NULL),
(5, 72, 2020, 'Pengabdian Kepada Masyarakat Berbasis Ipteks (tema covid-19)', 'Pelatihan Budidaya Curcuma spp (Jahe Merah, Kunyit, Temu Lawak) dan Pembuatan Olahan Minuman Kesehatan untuk Pencegahan Covid-19 bagi Mahasiswa UNIB Terdampak dan Warga RT.03 RW.01 Kelurahan Lingkar Barat Bengkulu', NULL, NULL, NULL),
(6, 528, 2020, 'Pengabdian Kepada Masyarakat Berbasis Ipteks (tema covid-19)', 'Aksi Pemenuhan Protein Hewani Untuk Mahasiswa Selingkung Unib Di Masa Pandemi Covid-19', NULL, NULL, NULL),
(7, 662, 2020, 'Pengabdian Kepada Masyarakat Berbasis Ipteks (tema covid-19)', 'Perancangan Wastafel Portabel Dengan Kontrol Pedal Kaki Dan Alat Pelindung Diri (Apd) Handmade Guna Menjaga Higienitas Para Pengunjung Dan Mencegah Penyebaran Virus Covid-19 Di Pusat Pelayanan Kesehatan Pratama Kota Bengkulu', NULL, NULL, NULL),
(8, 790, 2020, 'Pengabdian Kepada Masyarakat Berbasis Ipteks (tema covid-19)', 'Smart Disinfectant Chamber dengan Passive Infra Red Sensor untuk Pencegahan Penyebaran Covid-19', NULL, NULL, NULL),
(9, 642, 2020, 'Pengabdian Kepada Masyarakat Berbasis Ipteks (tema covid-19)', 'Wastafel Tanpa Sentuh Dengan Keran Automatis', NULL, NULL, NULL),
(10, 711, 2020, 'Pengabdian Kepada Masyarakat Pembinaan (tema covid-19)', 'Edukasi Gersik Dan Penguatan Kelembagaan Kelompok Pedagang Pasar Tradisional Sore Pematang Gubernur Kota Bengkulu Dalam Menghadapi Dampak Pandemik Covid-19', NULL, NULL, NULL),
(11, 621, 2020, 'Pengabdian Kepada Masyarakat Pembinaan (tema covid-19)', 'Penyuluhan Tentang Edukasi Social Distancing Dan Penggunaan Masker Dalam Pencegahan Wabah Corona Virus Disease (Covid-19) Serta Pemberian Sembako Pada Tenaga Kerja Di Usaha Makanan Khas Bengkulu Ende, Lempuing Kota Bengkulu Tahun 2020', NULL, NULL, NULL),
(12, 744, 2020, 'Pengabdian Kepada Masyarakat Pembinaan (tema covid-19)', 'Edukasi Perilaku Hidup Bersih dan Sehat (PHBS) dalam Pencegahan Covid-19 Serta Pembagian Sembako di Panti Asuhan Kasih Sayang Kota Bengkulu', NULL, NULL, NULL),
(13, 598, 2020, 'Pengabdian Kepada Masyarakat Pembinaan (tema covid-19)', 'Pemutusan Rantai Penularan Coronavirus Disease 2019 (Covid-19) Pada Ibu Hamil, Nifas Dan  Menyusui Di Kecamatan Ratu Agung  Kota Bengkulu', NULL, NULL, NULL),
(14, 813, 2020, 'Pengabdian Kepada Masyarakat Pembinaan (tema covid-19)', 'Komunikasi, Informasi, Dan Edukasi Covid-19 di Panti Asuhan Bumi Rafflesia Kota Bengkulu', NULL, NULL, NULL),
(15, 397, 2020, 'Pengabdian Kepada Masyarakat Pembinaan (tema covid-19)', 'Komunikasi, Edukasi Dan Informasi: Upaya Peningkatan Kesehatan Masyarakat Beresiko Tinggi  Terhadap Penyebaran Virus Covid-19 Di Panti Sosial Tresna Werdha (PSTW) Kota Bengkulu', NULL, NULL, NULL),
(16, 531, 2020, 'Pengabdian Kepada Masyarakat Pembinaan (tema covid-19)', 'UNIB Peduli Tenaga Medis RSUD Dr. M. Yunus Bengkulu', NULL, NULL, NULL),
(17, 433, 2020, 'Pengabdian Kepada Masyarakat Pembinaan (tema covid-19)', 'Pembuatan Hand Sanitizer Dan Hand Soap Berbahan Alami Untuk Fasilitas Umum di Kecamatan Muara Bengkahulu dalam Rangka Pencegahan Covid-19', NULL, NULL, NULL),
(18, 762, 2020, 'Pengabdian Kepada Masyarakat Pembinaan', 'PENINGKATAN PEMAHAMAN MASYARAKAT MENGENAI KOMPOSISI DAN RESIKO DALAM MENGKONSUMSI OBAT-OBATAN YANG DIIKLANKAN MEDIA MASSA', NULL, NULL, NULL),
(19, 813, 2020, 'Pengabdian Kepada Masyarakat Pembinaan', 'PELATIHAN PENERAPAN TEKNOLOGI (MODEL) HIDROPONIK BAGI WARGA SEKOLAH SMP SINT CAROLUS KOTA BENGKULU', NULL, NULL, NULL),
(20, 813, 2020, 'Pengabdian Kepada Masyarakat Pembinaan', 'PELATIHAN PENYUSUNAN INSTRUMEN TES MATEMATIKA ONLINE BERBASIS SOAL PROGRAMME FOR INTERNATIONAL STUDENT ASSESSMENT PADA GURU MATEMATIKA KOTA BENGKULU', NULL, NULL, NULL),
(21, 788, 2020, 'Pengabdian Kepada Masyarakat Pembinaan', 'EDUKASI KEBUTUHAN DASAR PENDIDIKAN ANAK USIA DINI MELALUI METODE PUMPING PADA IBU PEKERJA', NULL, NULL, NULL),
(22, 431, 2020, 'Pengabdian Kepada Masyarakat Pembinaan', 'PEMBINAAN INDUSTRI KOPI RUMAHAN MENUJU PRODUK HALAL PADA KELOMPOK TANI PANGESTU RAKYAT DESA BARU MANIS KABUPATEN REJANG LEBONG', NULL, NULL, NULL),
(23, 813, 2020, 'Pengabdian Kepada Masyarakat Pembinaan', 'PELATIHAN SOFTWARE SPSS UNTUK ANALISIS DATA PENELITIAN TINDAKAN KELAS', NULL, NULL, NULL),
(24, 520, 2020, 'Pengabdian Kepada Masyarakat Pembinaan', 'EDUKASI BAHAYA PENYEMPROTAN DISINFEKTAN KIMIA DAN REKOGNISI DISINFEKTAN ALAMI SEBAGAI ALTERNATIF KEPADA MASYARAKAT KELURAHAN SUMUR DEWA KECAMATAN SELEBAR KOTA BENGKULU', NULL, NULL, NULL),
(25, 274, 2020, 'Pengabdian Kepada Masyarakat Pembinaan', 'PENINGKATAN  PERAN OSIS DAN PETUGAS UKS DALAM USAHA GERAKAN MASYARAKAT  HIDUP SEHAT DILINGKUNGAN SEKOLAH SMP - SMA PONDOK PESANTREN AL HASANAH PONDOK KELAPA BENGKULU TENGAH', NULL, NULL, NULL),
(26, 768, 2020, 'Pengabdian Kepada Masyarakat Pembinaan', 'OPTIMALISASI BUMDES  DALAM DESTINATION BRANDING DAN PROMOSI POTENSI WISATA AIR TERJUN HELLO KITTY UNTUK MENINGKATKAN PENDAPATAN DESA KALI PADANG, KECAMATAN SELUPU REJANG, REJANG LEBONG', NULL, NULL, NULL),
(27, 712, 2020, 'Pengabdian Kepada Masyarakat Pembinaan', 'OPTIMALISASI PEMANFAATAN LAHAN PEKARANGAN BERBASIS ORGANIK UNTUK MEWUJUDKAN KEMANDIRIAN PANGAN DI KELURAHAN BERINGIN RAYA', NULL, NULL, NULL),
(28, 721, 2020, 'Pengabdian Kepada Masyarakat Pembinaan', 'PEMANFAATAN LIMBAH TAHU SEBAGAI INISIASI PEMBUATAN SUMBER NUTRISI TANAMAN YANG RAMAH LINGKUNGAN DAN PANGAN OLAHAN DI KELURAHAN SIDOREJO KABUPATEN REJANG LEBONG', NULL, NULL, NULL),
(29, 417, 2020, 'Pengabdian Kepada Masyarakat Pembinaan', 'PEMBUATAN ALAT PERAGA INSTALASI SISTEM PENERANGAN MENGGUNAKAN PANEL SURYA UNTUK MEDIA PEMBELAJARAN ENERGI TERBARUKAN DI SD SAB MAHIRA BENGKULU', NULL, NULL, NULL),
(30, 666, 2020, 'Pengabdian Kepada Masyarakat Berbasis Ipteks', 'PENDAMPINGAN PENERAPAN MODEL REALISTIC MATHEMATICS EDUCATION BERBASIS ETNOMATEMATIKA TABUT UNTUK MENGEMBANGKAN  KEMAMPUAN LITERASI MATEMATIKA SISWA SD', NULL, NULL, NULL),
(31, 813, 2020, 'Pengabdian Kepada Masyarakat Berbasis Ipteks', 'PELATIHAN TEKNIK EKSITU BUDIDAYA IKAN GABUS PADA KELOMPOK PEMUDA DI DESA LAGAN BUNGIN KABUPATEN BENGKULU TENGAH', NULL, NULL, NULL),
(32, 813, 2020, 'Pengabdian Kepada Masyarakat Berbasis Ipteks', 'TEKNOLOGI PENGERINGAN KOPI DAN E-COMMERCE UNTUK OPTIMALISASI PEMASARAN PRODUK DI ERA DIGITAL BAGI USAHA MIKRO KELOMPOK TANI PANGESTU RAKYAT DESA BARUMANIS KECAMATAN BERMANI ULU KABUPATEN REJANG LEBONG', NULL, NULL, NULL),
(33, 775, 2020, 'Pengabdian Kepada Masyarakat Berbasis Ipteks', 'PEMANFAATAN LIMBAH PELEPAH KELAPA SAWIT SEBAGAI PAKAN TERNAK FERMENTASI (SILASE) PADA KELOMPOK WANITA TANI (KWT) TANJUNG AUR DESA JENGGALU KABUPATEN SELUMA', NULL, NULL, NULL),
(34, 724, 2020, 'Pengabdian Kepada Masyarakat Berbasis Ipteks', 'KONVERSI KULIT KOPI MENJADI ASAP CAIR MULTI GUNA PADA KELOMPOK TANI PANGESTU RAKYAT DESA BARU MANIS KABUPATEN REJANG LEBONG', NULL, NULL, NULL),
(35, 757, 2020, 'Pengabdian Kepada Masyarakat Berbasis Ipteks', 'PENERAPAN TEKNOLOGI ?SONIC BLOOM?  PADA BUDIDAYA TOMAT UNTUK MENINGKATKAN HASIL PANEN PETANI DI DESA SAMBIREJO', NULL, NULL, NULL),
(36, 291, 2020, 'Pengabdian Kepada Masyarakat Berbasis Ipteks', 'WORKSHOP PENGGUNAAN PEMBELAJARAN DARING BERBASIS APLIKASI GOOGLE DI TENGAH  PENERAPAN PHYSICAL DISTANCING DI SMAN 8 KOTA BENGKULU\n', NULL, NULL, NULL),
(37, 405, 2020, 'Pengabdian Kepada Masyarakat Berbasis Ipteks', 'TEKNOLOGI PENGOLAHAN KOPI REMPAH CELUP SEBAGAI OLEH-OLEH KHAS WISATA DESA \"DANAU SURO MANGGI\"', NULL, NULL, NULL),
(38, 318, 2020, 'Pengabdian Kepada Masyarakat Berbasis Ipteks', 'RE-EKSISTENSI PERAN KELOMPOK SWADAYA MASYARAKAT (KSM) SEPAKAT DALAM PENGELOLAAN SAMPAH DI KELURAHAN PASAR UJUNG KECAMATAN KEPAHIANG KABUPATEN KEPAHIANG', NULL, NULL, NULL),
(39, 389, 2020, 'Pengabdian Kepada Masyarakat Berbasis Ipteks', 'PELATIHAN BUDIDAYA JAMURTIRAM PUTIH(PLEUROTUS OSTREATUS) BERBASIS LIMBAH PERTANIAN UNTUK PELUANG USAHA DAN SUMBER PANGAN SEHAT KELUARGA BAGI WANITA TANI DI KELURAHAN  TALANG ULU KECAMATAN  CURUP TIMUR KABUPATEN REJANG LEBONG', NULL, NULL, NULL),
(40, 753, 2020, 'Pengabdian Kepada Masyarakat Berbasis Ipteks', 'PEMBERDAYAAN MASYARAKAT MELALUI PELATIHAN PEMBUATAN MESIN PENETAS TELUR PUYUH OTOMATIS UNTUK MENINGKATKAN PENDAPATAN MASYARAKAT DI KELURAHAN SUKARAMI KECAMATAN SELEBAR KOTA BENGKULU', NULL, NULL, NULL),
(41, 813, 2020, 'Pengabdian Kepada Masyarakat Berbasis Ipteks', 'RANCANG BANGUN PENGERING KOPI PORTABEL UNTUK PENINGKATAN PRODUKSI PASCA PANEN PETANI KOPI TRADISIONAL DI KECAMATAN KABAWETAN KABUPATEN KEPAHIANG', NULL, NULL, NULL),
(42, 793, 2020, 'Pengabdian Kepada Masyarakat Berbasis Ipteks', 'PELATIHAN PEMBUATAN LAMPU HIAS AKRILIK 3D LED LAMP UNTUK MENINGKATKAN PENDAPATAN BAGI PEMUDA TUNAKARYA DI JALAN KORPRI RT. 10 KELURAHAN BENTIRING KECAMATAN MUARA BANGKAHULU KOTA BENGKULU', NULL, NULL, NULL),
(43, 29, 2020, 'Pengabdian Kepada Masyarakat Berbasis Riset', 'PENDAMPINGAN PENILAIAN HASIL BELAJAR SISWA MENGGUNAKAN RUBRIK MENDUKUNG IMPLEMENTASI KEBIJAKAN STUDY FROM HOME BAGI GURU SD KOTA BENGKULU', NULL, NULL, NULL),
(44, 52, 2020, 'Pengabdian Kepada Masyarakat Berbasis Riset', 'PENINGKATAN PRODUKTIVITAS MUSEUM NEGERI BENGKULU MELALUI PENYEDIAAN KORPUS NASKAH PENGOBATAN TRADISIONAL SEBAGAI SUMBER PENGEMBANGAN OBAT DAN JAMU', NULL, NULL, NULL),
(45, 156, 2020, 'Pengabdian Kepada Masyarakat Berbasis Riset', 'PPM BERBASIS RISET - PENINGKATAN PRODUKSI SUSU DAN PENDAPATAN PETERNAK DENGAN APLIKASI PAKAN BERBASIS LIMBAH DURIAN DI SENTRA PETERNAKAN SAPI PERAH DI REJANG LEBONG', NULL, NULL, NULL),
(46, 35, 2020, 'Pengabdian Kepada Masyarakat Berbasis Riset', 'PENERAPAN PAKET TEKNOLOGI TEPAT GUNA ?PRODUKSI CABAI MERAH DI LAHAN MASAM? UNTUK MENINGKATKAN PENGETAHUAN DAN KETRAMPILAN KELOMPOK TANI', NULL, NULL, NULL),
(47, 5, 2020, 'Pengabdian Kepada Masyarakat Berbasis Riset', 'DEPOT SAYUR MURAH DAN BERGIZI KELOMPOK TANI MELATI KELURAHAN KANDANG LIMUN KOTA BENGKULU', NULL, NULL, NULL),
(48, 641, 2020, 'Pengabdian Kepada Masyarakat Berbasis Riset', 'BIO-KONVERSI PENGELOLAAN SAMPAH ORGANIK MENJADI PUPUK CAIR DAN PRODUKSI MAGGOT BSF UNTUK PAKAN IKAN DAN LINGKUNGAN SEHAT', NULL, NULL, NULL),
(49, 223, 2020, 'Pengabdian Kepada Masyarakat Berbasis Riset', 'PEMBERDAYAAN PETANI KOPI DALAM PENGELOLAAN AGROFORESTRI DAN HILIRISASI UNTUK MENINGKATKAN KESEJAHTERAAN DI HUTAN KEMASYARAKATAN (HKM), KELURAHAN UJAN MAS ATAS', NULL, NULL, NULL),
(50, 680, 2020, 'Pengabdian Kepada Masyarakat Berbasis Riset', 'PENERAPAN TEKNOLOGI SMART WATER TREATMENT TANK SYSTEM (SWT2S) DENGAN PEMBANGKIT LISTRIK TENAGA SURYA (PLTS) UNTUK MEMBERSIHKAN TANGAN DI PASAR MINGGU BENGKULU', NULL, NULL, NULL),
(51, 349, 2020, 'PNBP Fakultas KIP', 'Edukasi mengenai virus covid-19 dan social distancing kepada kelompok warga penerima bantuan Program Keluarga Harapan (PKH) di Kelurahan Surabaya Kota Bengkulu', NULL, NULL, NULL),
(52, 474, 2020, 'PNBP Fakultas KIP', 'Metode Pengendalian Diri Dalam Menghadapi Pandemi Covid-19 Bagi Guru-Guru PAUD Di Kota Bengkulu', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengabdiananggota`
--

CREATE TABLE `pengabdiananggota` (
  `id_pengabdiananggota` int(11) NOT NULL,
  `pengabdian_id_pengabdian` int(11) NOT NULL,
  `anggotapengabdians_id_anggota` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratpenelitian`
--

CREATE TABLE `suratpenelitian` (
  `id_srtpenelitian` int(11) NOT NULL,
  `id_penelitian` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_penandatangan` int(11) DEFAULT NULL,
  `jenis_suratpenelitian` enum('surat tugas','surat keterangan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('dalam antrean','sedang diproses','selesai') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tj_keg_penelitian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lok_keg_penelitian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_keg_penelitian` date DEFAULT NULL,
  `tgl_sls_keg` date DEFAULT NULL,
  `jk_waktu_penelitian` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thn_pelaksanaan` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smbr_dana_penelitian` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jmlh_dana_penelitian` int(11) DEFAULT NULL,
  `file_suratpenelitian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratpengabdian`
--

CREATE TABLE `suratpengabdian` (
  `id_srtpengabdian` int(11) NOT NULL,
  `id_pengabdian` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_penandatangan` int(11) DEFAULT NULL,
  `jenis_suratpengabdian` enum('surat tugas','surat keterangan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('upload file','dalam antrean','sedang diproses','selesai') COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_surattugas` enum('surat permohonan mitra','proposal') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_srt_permohonan` date DEFAULT NULL,
  `no_srt_permohonan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_srt_permohonan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_keg_pengabdian` date DEFAULT NULL,
  `tgl_sls_keg` date DEFAULT NULL,
  `lok_keg_penelitian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul_materi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_proposal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_srt_mitra` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_mitra` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_srt_mitra` date DEFAULT NULL,
  `file_srt_mitra` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_laporan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `luaran_keg` enum('jurnal','berita','booklet','youtube') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul_jurnal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pub_jurnal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_jurnal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_booklet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_absensi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_suratpengabdian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip_user` char(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nidn_user` char(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp_user` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir_user` date DEFAULT NULL,
  `jenis_kelamin_user` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fakultas_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hak_akses` enum('dosen','staff','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dosen',
  `foto_profil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '$2y$10$zqLwn9UYeAnVVK6y/sbOS.caQ14k3xhZBG5x/SUDod/qOvAewJOR2',
  `status` enum('nonaktif','pending','aktif') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `nip_user`, `nidn_user`, `email_user`, `no_hp_user`, `alamat_user`, `tgl_lahir_user`, `jenis_kelamin_user`, `prodi_user`, `fakultas_user`, `hak_akses`, `foto_profil`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Prof. Dr. Ir. ALNOPRI, M.S.', '196211041987021000', '4116207', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(2, 'Prof. Dr. Drs. BADENI, M.A.', '195706031984031000', '3065704', '', '', '', '0000-00-00', '', 'Ilmu Pendidikan (S3)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(3, 'Prof. Ir. WIDODO, M.Sc., Ph.D.', '195807011984031000', '1075802', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S2)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(4, 'Prof. Dr. HERLAMBANG, S.H., M.H.', '196510161989011000', '16106503', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S2)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(5, 'Prof. Dr. Ir. NANIK SETYOWATI, M.Sc.', '196002281984032000', '28026006', '', '', '', '0000-00-00', '', 'Ilmu Pertanian (S3)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(6, 'Prof. Drs. SAFNIL, M.A., Ph.D.', '196101211986011000', '21016105', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(7, 'Dr. Drs. SYAIFUL ANWAR AB., S.U.', '195710101984031000', '10105707', '', '', '', '0000-00-00', '', 'Administrasi Pendidikan (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(8, 'Prof. Dr. Drs. SUDARWAN, M.Pd.', '195902201984031000', '20025904', '', '', '', '0000-00-00', '', 'Ilmu Pendidikan (S3)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(9, 'Prof. Dr. Drs. RAMBAT NURSASONGKO, M.Pd.', '196112071986011000', '7126108', '', '', '', '0000-00-00', '', 'Administrasi Pendidikan (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(10, 'Prof. Dr. JOHANES SAPRI, M.Pd.', '196012121985031000', '12126023', '', '', '', '0000-00-00', '', 'Teknologi Pendidikan (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(11, 'Prof. Ir. ZAINAL MUKTAMAR, M.Sc., Ph.D.', '195911101984031000', '10115921', '', '', '', '0000-00-00', '', 'Ilmu Pertanian (S3)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(12, 'JOKO SUSETYANTO, S.H., M.S.', '196007271985031000', '27076016', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(13, 'Prof. Dr. HERAWAN S., S.H., M.S.', '196412111988031000', '11126405', '', '', '', '0000-00-00', '', 'Kenotariatan (S2)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(14, 'Prof. Dr. SYUKRI HAMZAH, M.Si.', '195511201984031000', '20015502', '', '', '', '0000-00-00', '', 'Ilmu Pendidikan (S3)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(15, 'Prof. Dr. WACHIDI, M.Pd.', '195201111985031000', '11015204', '', '', '', '0000-00-00', '', 'Ilmu Pendidikan (S3)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(16, 'Prof. Dr. agr. JOHAN SETIANTO.', '196201061986031000', '6016204', '', '', '', '0000-00-00', '', 'Pengelolaan Sumber Daya Alam & Lingkungan (S2)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(17, 'Prof. Dr. BAMBANG SAHONO, M.Pd.', '195910151985031000', '15105908', '', '', '', '0000-00-00', '', 'Teknologi Pendidikan (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(18, 'Prof. LIZAR ALFANSI, S.E., M.B.A., Ph.D.', '196406011989031000', '1066408', '', '', '', '0000-00-00', '', 'Manajemen (S3)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(19, 'Prof. Dr. Ir. SIGIT NUGROHO, M.Sc.', '196011301986021000', '30116008', '', '', '', '0000-00-00', '', 'Statistika (S2)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(20, 'Prof. Dr. Ir. YUWANA, M.Sc.', '195912101986031000', '0010125910', 'yuwana@unib.ac.id', '0821371631832', 'Bengkulu', '1962-12-10', 'P', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '$2y$10$IW0ymajZEIGexHdkisKj5uArifxPDXSdQ3KfRCrlmG1cGVQW4MrCW', 'nonaktif', '2Y9VOj23WGjW0N6VAN2rtJFiEV97VPMs4xpughFkVI5j2ntEk2ol03UxPvRR', NULL, '2021-06-29 02:20:50', NULL),
(21, 'Prof. Dr. Ir. BAMBANG SULISTYO, M.Si.', '196209061987031000', '6096208', '', '', '', '0000-00-00', '', 'Ilmu Pertanian (S3)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(22, 'Prof. Dr. Ir. PRIYONO PRAWITO, M.Sc.', '195806261985031000', '26065806', '', '', '', '0000-00-00', '', 'Ilmu Tanah (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(23, 'Prof. Dr. Ir. MASDAR, M.Sc.', '196004021986031000', '2046003', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(24, 'Prof. Dr. ISKANDAR, S.H., M.Hum.', '196311071990011000', '7116307', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(25, 'Prof. Dr. KAMALUDIN, S.E., M.M.', '196603041998021000', '4036607', '', '', '', '0000-00-00', '', 'Manajemen (S3)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(26, 'Dr. Ir. PAMUJI LESTARI, M.Sc.', '196308201987032000', '28086304', '', '', '', '0000-00-00', '', 'Kehutanan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(27, 'Prof. Dr. Ir. RIWANDI, M.S.', '195608191985031000', '19085602', '', '', '', '0000-00-00', '', 'Ilmu Tanah (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(28, 'Prof. Drs. MUDIN SIMANIHURUK, Ph.D.', '195610221984031000', '22105608', '', '', '', '0000-00-00', '', 'Statistika (S2)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(29, 'Prof. Dr. Dra. ENDANG WIDI WINARNI, M.Pd.', '196009041987022000', '4096009', '', '', '', '0000-00-00', '', 'Pendidikan Dasar (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(30, 'Prof. Dr. Ir. DWINARDI APRIYANTO, M.Sc.', '195804211984031000', '21045805', '', '', '', '0000-00-00', '', 'Proteksi Tanaman (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(31, 'Prof. Dr. Ir. RR. YUDHY HARINI BERTHAM, M.P.', '195804301986032000', '30055807', '', '', '', '0000-00-00', '', 'Ilmu Tanah (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(32, 'Prof. Ir. URIP SANTOSO, M.Sc., Ph.D.', '196009211986031000', '21096007', '', '', '', '0000-00-00', '', 'Peternakan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(33, 'Prof. Dr. Ir. YOSI FENITA, M.P.', '196804181994032000', '18046804', '', '', '', '0000-00-00', '', 'Peternakan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(34, 'Prof. Dr. Ir. KETUT SUKIYONO, M.Ec.', '196210111987021000', '11106208', '', '', '', '0000-00-00', '', 'Ilmu Pertanian (S3)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(35, 'Prof. Dr. Ir. CATUR HERISON, M.Sc.', '196207241987031000', '24076203', '', '', '', '0000-00-00', '', 'Ilmu Pertanian (S3)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(36, 'Drs. H. MUH. NASIRUN, M.Pd.', '195808191985031000', '19085815', '', '', '', '0000-00-00', '', 'Pendidikan Guru PAUD (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(37, 'Dr. Drs. HADIWINARTO, M.Psi.', '195809131984031000', '13045807', '', '', '', '0000-00-00', '', 'Bimbingan dan Konseling (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(38, 'Dr. Drs. ALEXON, M.Pd.', '196012021986031000', '2126005', '', '', '', '0000-00-00', '', 'Pendidikan Profesi Guru (Profesi)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(39, 'SUBANRIO, S.H., M.H.', '195810111983031000', '11105804', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(40, 'M. ABDI, S.H., M.Hum.', '196301041987021000', '4016208', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(41, 'Dr. MUHARTINI SALIM, S.E., M.M.', '196007091986032000', '9076009', '', '', '', '0000-00-00', '', 'Manajemen (S3)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(42, 'Dr. Dra. NIRWANA, M.Pd.', '195909121985032000', '12095908', '', '', '', '0000-00-00', '', 'Pendidikan IPA (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(43, 'Ir. BAMBANG GONGGO MURCITRO, M.S.', '195907141986031000', '14075906', '', '', '', '0000-00-00', '', 'Ilmu Tanah (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(44, 'Ir. WURI MARSIGIT, M.App.Sc.', '196103111987021000', '11036109', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(45, 'Drs. BAMBANG TRIHADI, M.S.', '195912301986031000', '30125908', '', '', '', '0000-00-00', '', 'Kimia (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(46, 'Ir. BAMBANG SUMANTRI, M.Si.', '196009171987021000', '17096007', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(47, 'ADI BASTIAN SALAM, S.H., M.H.', '196412061990031000', '6126403', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(48, 'Drs. SUPADI, M.Hum.', '195909301987021000', '30095907', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa dan Sastra Indonesia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(49, 'ANDRY HARIJANTO, S.H., M.Si.', '195812311985031000', '31125835', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(50, 'Dr. ANTORY ROYAN ADYAN, S.H., M.Hum.', '196409151990011000', '15096408', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S2)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(51, 'Dra. SRI SAPARAHAYUNINGSIH, M.Pd.', '195909011985032000', '1095914', '', '', '', '0000-00-00', '', 'Pendidikan Guru PAUD (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(52, 'Dr. Drs. SARWIT SARWONO, M.Hum.', '195810121986031000', '12105807', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Indonesia (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(53, 'MOHAMMAD DARUDIN, S.H., M.H.', '195810261985031000', '26105807', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(54, 'Dr. Drs. AKHMAD, M.Hum.', '196201021991031000', '2016207', '', '', '', '0000-00-00', '', 'Kenotariatan (S2)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(55, 'NOEKE SRI WARDHANI, S.H., M.Hum.', '195611231985032000', '23115606', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(56, 'Dr. AMANCIK, S.H., M.Hum.', '196305171990011000', '17056306', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(57, 'Dr. Drs. RIZWAR, M.S.', '196112091987031000', '9126109', '', '', '', '0000-00-00', '', 'Biologi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(58, 'Dr. Dra. HANIFAH, M.Kom.', '196208151986032000', '15086210', '', '', '', '0000-00-00', '', 'Pendidikan Matematika (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(59, 'Dr. Dra. YUNILISIAH, M.Si.', '196406261990012000', '26066408', '', '', '', '0000-00-00', '', 'Ilmu Kesejahteraan Sosial (S2)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(60, 'M. YAMANI, S.H., M.Hum.', '196503101992031000', '10036507', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(61, 'Ir. AGUS PURWOKO, M.Sc.', '195908081986011000', '8085908', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(62, 'Dr. Drs. ACHMAD AMINUDIN, M.Si.', '196006091988031000', '9066004', '', '', '', '0000-00-00', '', 'Ilmu Administrasi (S2)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(63, 'Dr. Drs. TAMRIN, M.K.M.', '196508251990011000', '25086509', '', '', '', '0000-00-00', '', 'Ilmu Kesejahteraan Sosial (S2)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(64, 'SLAMET MULJONO, S.H., M.S.', '195804111984031000', '11045804', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(65, 'Dr. Dra. MURIA HERLINA, M.Kes.', '196008111989012000', '11086007', '', '', '', '0000-00-00', '', 'Ilmu Kesejahteraan Sosial (S2)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(66, 'Dr. Drs. TEJA DWISUTANTO, M.Si.', '196006011987021000', '1066013', '', '', '', '0000-00-00', '', 'Kimia (S2)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(67, 'Dr. Dra. CONNIE, M.Pd.', '196102091985032000', '9026104', '', '', '', '0000-00-00', '', 'Administrasi Pendidikan (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(68, 'Drs. EDY HERMANSYAH, M.Sc., Ph.D.', '196207041987031000', '4076207', '', '', '', '0000-00-00', '', 'Teknik Informatika (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(69, 'Drs. DEDI SUPRIYADI, M.Si.', '195711031986021000', '3115713', '', '', '', '0000-00-00', '', 'Jurnalistik (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(70, 'Dr. Ir. ATRA ROMEIDA, M.Si.', '196405301989032000', '30056405', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(71, 'Dr. Drs. MUKHAMMAD FARID, M.S.', '195911081986031000', '8115905', '', '', '', '0000-00-00', '', 'Geofisika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(72, 'Dr. Ir. PRASETYO, M.S.', '195807261986011000', '26075808', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S2)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(73, 'Dr. Drs. AGUS SETIYANTO, M.Hum.', '195804211987021000', '21045806', '', '', '', '0000-00-00', '', 'Ilmu Kesejahteraan Sosial (S2)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(74, 'PRANINGRUM, S.E., M.Si.', '196410281990012000', '28106407', '', '', '', '0000-00-00', '', 'Manajemen (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(75, 'Drs. SUWARSONO, M.S.', '195902141986121000', '14025906', '', '', '', '0000-00-00', '', 'Fisika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(76, 'Dr. Dra. TITIEK KARTIKA HENDRASTITI, M.A.', '196003301986032000', '30036009', '', '', '', '0000-00-00', '', 'Ilmu Administrasi (S2)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(77, 'Ir. ZAMDIAL, M.Si.', '196208071988031000', '7086204', '', '', '', '0000-00-00', '', 'Ilmu Kelautan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(78, 'Dra. EMI AGUSTINA, M.Hum.', '196508171990032000', '17086506', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa dan Sastra Indonesia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(79, 'Drs. WELLY DARWIS, M.Sc.', '196007131987031000', '13076005', '', '', '', '0000-00-00', '', 'Biologi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(80, 'Dr. SIRMAN DAHWAL, S.H., M.H.', '196409181990031000', '18096405', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S2)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(81, 'Ir. BASUKI SIGIT PRIYONO, M.Sc.', '196008281986091000', '28086008', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(82, 'Drs. BOKO SUSILO, M.Kom.', '195904241986021000', '24045912', '', '', '', '0000-00-00', '', 'Teknik Informatika (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(83, 'Drs. IRDAM IDRUS, M.Pd.', '195606061985111000', '6065612', '', '', '', '0000-00-00', '', 'Pendidikan Biologi (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(84, 'Dra. SRI IRAWATI, M.Pd.', '196003261984032000', '26036004', '', '', '', '0000-00-00', '', 'Pendidikan Biologi (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(85, 'Ir. ENTANG INORIAH SUKARJO, M.S.', '195711081987022000', '8115707', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(86, 'LIDIA BR KARO, S.H., M.Hum.', '195903151985032000', '15035905', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(87, 'Dr. TITO SOFYAN, S.H., M.S.', '196006041986031000', '4066009', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(88, 'Dr. Ir. MARWANTO, M.Sc.', '196004071987031000', '7046011', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S2)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(89, 'Drs. NYOMAN ROHADI, M.Sc.', '195609131985031000', '13095604', '', '', '', '0000-00-00', '', 'Pendidikan Fisika (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(90, 'Dra. ARIEFA PRIMAIR YANI, M.Pd.', '196003061987032000', '6036004', '', '', '', '0000-00-00', '', 'Pendidikan IPA (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(91, 'Dr. NUR SULISTYO BUDI AMBARINI, S.H., M.Hum.', '196009231987032000', '23096006', '', '', '', '0000-00-00', '', 'Kenotariatan (S2)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(92, 'Prof. Dr. Drs. WAHYU WIDADA, M.Pd.', '196903061993031000', '6036901', '', '', '', '0000-00-00', '', 'Pendidikan Matematika (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(93, 'Dra. NGUDINING RAHAYU, M.Hum.', '196009181986032000', '18096006', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa dan Sastra Indonesia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(94, 'Dr. Drs. AFRIZAL MAYUB, M.Kom.', '196004181987031000', '18046012', '', '', '', '0000-00-00', '', 'Pendidikan IPA (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(95, 'Dr. Dra. ROSANE MEDRIATI, M.Pd.', '196112101986032000', '10126105', '', '', '', '0000-00-00', '', 'Pendidikan Fisika (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(96, 'Drs. HANDOKO HADIYANTO, M.S., Ph.D.', '195906161986031000', '16065905', '', '', '', '0000-00-00', '', 'Ilmu Ekonomi (S3)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(97, 'ISMA CORYANATA, S.E., M.Si., Ak.', '197403061999032000', '6037404', '', '', '', '0000-00-00', '', 'Akuntansi (D3)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(98, 'Drs. ASAHAR JOHAR T., M.Si.', '195803051986031000', '5035807', '', '', '', '0000-00-00', '', 'Sistem Informasi (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(99, 'Dra. RIDA SAMDARA, M.S.', '196104221986032000', '22046110', '', '', '', '0000-00-00', '', 'Fisika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(100, 'EDYTIAWARMAN, S.H., M.Hum.', '196304061989011000', '6046305', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(101, 'Dr. Ir. SUPANJANI, M.Sc.', '196207211987021000', '21076205', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S2)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(102, 'Dra. KASRINA, M.Si.', '196508271991022000', '27086503', '', '', '', '0000-00-00', '', 'Pendidikan Biologi (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(103, 'SUDIRMAN SITEPU, S.H., M.Hum.', '196111151992031000', '15116106', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(104, 'Dr. ARIF ISMUL HADI, S.Si., M.Si.', '197309241999031000', '24097303', '', '', '', '0000-00-00', '', 'Geofisika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(105, 'AGUSALIM, S.H., M.Hum.', '196009171989031000', '17096006', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(106, 'Dr. HUSAINI, S.E., M.Si., Ak.', '197104031997021000', '3047103', '', '', '', '0000-00-00', '', 'Akuntansi (S2)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(107, 'Prof. Dr. RIYANTO, M.Pd.', '196006221989031000', '22066010', '', '', '', '0000-00-00', '', 'Ilmu Pendidikan (S3)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(108, 'Dr. Ir. BUDIYANTO, M.Sc.', '195902081986031000', '8025905', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(109, 'Prof. Dr. RIDWAN NURAZI, S.E., M.Sc.', '196009151989031000', '15096009', '', '', '', '0000-00-00', '', 'Manajemen (S2)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(110, 'Dr. HAMZAH, S.H., M.H.', '195811161984031000', '16115805', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S2)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(111, 'Dr. Ir. SUPRAPTO, M.Sc.', '195809221985031000', '22095804', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S2)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(112, 'Dr. Drs. I.WAYAN DHARMAYANA, M.Psi.', '196101231985031000', '23016105', '', '', '', '0000-00-00', '', 'Pendidikan Profesi Guru SD (Profesi)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(113, 'Drs. AGUS ZAINAL RACHMAT, M.Pd.', '195804071985031000', '7045804', '', '', '', '0000-00-00', '', 'Pendidikan Luar Sekolah (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(114, 'Drs. RIZKAN, M.Kes.', '195511021982031000', '2115504', '', '', '', '0000-00-00', '', 'Pendidikan Luar Sekolah (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(115, 'Dr. Dra. SUMARSIH, M.Pd.', '196005261987032000', '26056007', '', '', '', '0000-00-00', '', 'Administrasi Pendidikan (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(116, 'Dr. Drs. BUYUNG KERAMAN, M.Kes.', '195605061984031000', '6055606', '', '', '', '0000-00-00', '', 'Statistika (S2)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(117, 'HAMDANI, S.H., M.Hum.', '196008171987021000', '17086012', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(118, 'Drs. CHOIRUL MUSLIM, SU, Ph.D.', '195604171987031000', '17045609', '', '', '', '0000-00-00', '', 'Biologi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(119, 'Dr. Ir. BANDI HERMAWAN, M.Sc.', '196008271986031000', '196008271986031000', 'bandi@unib.ac.id', '08213727917319', 'Bengkulu', '1960-08-24', 'L', 'Ilmu Tanah (S1)', 'Fakultas Pertanian', 'dosen', '', '$2y$10$y6aR3ZErJPKYJEg0EE1aWeqO.u7zeNk9W4IVJruxNxI0JjLjn3iRS', 'aktif', '4qVjxJf4yBr1ZgcfqXPfihlTfq2y0KSphIlwlb5nyRg5Bj6ukcpaIxcpDFxy', NULL, '2021-06-29 05:33:19', NULL),
(120, 'Drs. AZHAR MARWAN, M.Si.', '195712171986091000', '17125704', '', '', '', '0000-00-00', '', 'Ilmu Komunikasi (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(121, 'ANTONI SITORUS, S.E., MPM.', '196212181989101000', '18126209', '', '', '', '0000-00-00', '', 'Ekonomi Pembangunan (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(122, 'Dr. Ir. WIRYONO, M.Sc.', '196007021986031000', '2076006', '', '', '', '0000-00-00', '', 'Pengelolaan Sumber Daya Alam & Lingkungan (S2)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(123, 'Dra. BAKI SWITA, M.Sc.', '196010231985032000', '23106003', '', '', '', '0000-00-00', '', 'Matematika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(124, 'Dr. PUSPA DJUWITA, M.Pd.', '195809021985032000', '2095808', '', '', '', '0000-00-00', '', 'Pendidikan Dasar (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(125, 'Ir. HASANUDIN, MP.', '195908051986101000', '5085903', '', '', '', '0000-00-00', '', 'Ilmu Tanah (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(126, 'Dr. Drs. PANJI SUMINAR, M.A.', '196202161988031000', '16026207', '', '', '', '0000-00-00', '', 'Ilmu Komunikasi (S2)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(127, 'Dr. Ir. SYAFRIN TIAIF, M.Sc.', '195701081983031000', '8015712', '', '', '', '0000-00-00', '', 'Kehutanan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(128, 'Dr. IZHARUDIN, S.E., M.Si.', '196107291988031000', '29076110', '', '', '', '0000-00-00', '', 'Perencanaan Pembangunan (S2)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(129, 'GANEFI, S.H., M.Hum.', '196311201988032000', '20116307', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(130, 'Dr. rer. nat. TOTOK EKA SUHARTO, M.S.', '195905031986021000', '3055906', '', '', '', '0000-00-00', '', 'Kimia (S2)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(131, 'Drs. KAHAR, M.Si.', '195911221985031000', '22115909', '', '', '', '0000-00-00', '', 'Ilmu Administrasi Negara (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(132, 'JONNY SIMAMORA, S.H., M.Hum.', '195912051987031000', '5125907', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(133, 'Dr. Dra. ENI WIDIYATI, M.S.', '195806171986032000', '17065804', '', '', '', '0000-00-00', '', 'Kimia (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(134, 'Drs. LUKMAN, M.Ag.', '195802101986031000', '10025806', '', '', '', '0000-00-00', '', 'Pendidikan Guru Sekolah Dasar (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(135, 'Drs. JARTO TARIGAN, M.S.', '195711081984031000', '8115708', '', '', '', '0000-00-00', '', 'Ilmu Administrasi Negara (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(136, 'Drs. ABDUL MUKTADIR, M.Si.', '196212191986111000', '19126209', '', '', '', '0000-00-00', '', 'Pendidikan Dasar (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(137, 'Dr. Ir. USWATUN NURJANAH, MP.', '196104171987032000', '17046112', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(138, 'Dr. Drs. DJONET SANTOSO, M.A.', '196006011986031000', '1066012', '', '', '', '0000-00-00', '', 'Ilmu Administrasi (S2)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(139, 'Dr. Dra. DARMI, M.S.', '196211111987022000', '11116208', '', '', '', '0000-00-00', '', 'Biologi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(140, 'Dra. VICTORIA KARJIYATI, M.Pd.', '195802041985032000', '4025809', '', '', '', '0000-00-00', '', 'Pendidikan Guru Sekolah Dasar (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(141, 'Drs. RUFRAN ZULKARNAIN R., M.Pd.', '195910051985031000', '5105912', '', '', '', '0000-00-00', '', 'Pendidikan Luar Sekolah (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(142, 'Dr. DAIMUN, M.Pd.', '195610041984031000', '4105605', '', '', '', '0000-00-00', '', 'Pendidikan Dasar (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(143, 'Dra. NANI YULIANTINI, M.Pd.', '196007091986032000', '9076010', '', '', '', '0000-00-00', '', 'Pendidikan Guru Sekolah Dasar (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(144, 'Dr. AMIRIZAL, S.H., M.Hum.', '195808261989031000', '26085806', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(145, 'Dr. Drs. ZUL BAHRUM CANIAGO, M.S.', '195711251987021000', '25115706', '', '', '', '0000-00-00', '', 'Fisika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(146, 'Ir. LELA ROSPIDA, M.M.', '196412201992032000', '20126406', '', '', '', '0000-00-00', '', 'Ekonomi Pembangunan (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(147, 'Dr. Drs. WASIDI, M.Pd.', '195801161986021000', '16015802', '', '', '', '0000-00-00', '', 'Teknologi Pendidikan (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(148, 'Dra. YULIDESNI, M.Ag.', '195707251985032000', '25075704', '', '', '', '0000-00-00', '', 'Pendidikan Guru PAUD (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(149, 'Dr. Drs. BHAKTI KARYADI, M.Pd.', '196101041987021000', '4016109', '', '', '', '0000-00-00', '', 'Pendidikan IPA (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(150, 'Dra. SRI DADI, M.Pd.', '195810021983032000', '10025807', '', '', '', '0000-00-00', '', 'Pendidikan Guru Sekolah Dasar (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(151, 'Ir. DESELINA, MP.', '196812081993032000', '8126804', '', '', '', '0000-00-00', '', 'Kehutanan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(152, 'YEFRIZA, S.E., MPPM., Ph.D', '196807141992032000', '14076810', '', '', '', '0000-00-00', '', 'Ilmu Ekonomi (S3)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(153, 'Dr. Ir. HENDRI BUSTAMAN, MS.', '196111261986031000', '26116105', '', '', '', '0000-00-00', '', 'Proteksi Tanaman (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(154, 'Ir. PRIYATININGSIH, M.Sc.', '196202171986032000', '17026204', '', '', '', '0000-00-00', '', 'Proteksi Tanaman (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(155, 'Ir. LUKMAN HIDAYAT, MP.', '196007111986031000', '11076011', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(156, 'Prof. Dr. Ir. ENDANG SULISTYOWATI, M.Sc.', '196202051986032000', '5026207', '', '', '', '0000-00-00', '', 'Peternakan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(157, 'Drs. AGUS SUSANTA, M.Ed., Ph.D.', '196003291986031000', '29036004', '', '', '', '0000-00-00', '', 'Pendidikan Dasar (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(158, 'Ir. EDI SUHARTO, MP.', '196908311994031000', '31086903', '', '', '', '0000-00-00', '', 'Kehutanan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(159, 'Dr. Ir. DADANG SUHERMAN, MS.', '195912111986031000', '11125903', '', '', '', '0000-00-00', '', 'Peternakan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(160, 'Dr. Ir. PANDU IMAM SUDIBYO ADIB, MS.', '195904101987031000', '10045908', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(161, 'Ir. GUSWARNI ANWAR, MP., Ph. D.', '196708221993032000', '22086707', '', '', '', '0000-00-00', '', 'Kehutanan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(162, 'Dr. ACENG RUYANI, M.S.', '196001051986031000', '5016007', '', '', '', '0000-00-00', '', 'Pendidikan IPA (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(163, 'Dr. Drs. DIDI YULISTIO, M.Pd.', '196406261990031000', '26066407', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa dan Sastra Indonesia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(164, 'SUGENG SUSETYO, S.E., M.Si.', '195909191987021000', '19095909', '', '', '', '0000-00-00', '', 'Manajemen (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(165, 'Ir. FAHRURROZI, M.Sc., Ph.D.', '196410291989031000', '29106405', '', '', '', '0000-00-00', '', 'Ilmu Pertanian (S3)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(166, 'Dr. HUTAPIA, S.E., M.Si.', '196508181990011000', '18086509', '', '', '', '0000-00-00', '', 'Perencanaan Pembangunan (S2)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(167, 'Ir. HASANUDDIN, M.Sc.', '195810141985031000', '14105805', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(168, 'Dr. GUNGGUNG SENOAJI, S.Hut., MP.', '197111121997031000', '12117106', '', '', '', '0000-00-00', '', 'Kehutanan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(169, 'Dr. Ir. MARLIN, M.Sc.', '197003141994032000', '14037002', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(170, 'Dr. Ir. BIENG BRATA, MP.', '196002181986091000', '18026003', '', '', '', '0000-00-00', '', 'Pengelolaan Sumber Daya Alam & Lingkungan (S2)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(171, 'Dra. YAYAH CHANAFIAH, M.Hum.', '196108101989012000', '10086104', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa dan Sastra Indonesia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(172, 'Dra. YENNITA, M.Pd.', '196410101991022000', '10106412', '', '', '', '0000-00-00', '', 'Pendidikan Biologi (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(173, 'Dr. Ir. BILMAN WILMAN SIMANIHURUK, MP.', '196402151994031000', '15026407', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(174, 'Ir. NUSRIL, MM.', '195812111986031000', '11125803', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(175, 'Dr. ARDILAFIZA, S.H., M.Hum.', '196001291986101000', '29016003', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S2)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(176, 'Dra. HELMIYETTI, M.S.', '196105041987022000', '4056106', '', '', '', '0000-00-00', '', 'Biologi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(177, 'Dr. Ir. DEDDY BAKHTIAR, M.Si.', '196702181993031000', '196702181993031000', 'deddy@unib.ac.id', '082182137927398', 'Bengkulu', '1960-02-13', 'L', 'Ilmu Kelautan (S1)', 'Fakultas Pertanian', 'dosen', '', '$2y$10$0vC/yMkN/1us7u1rKHz3EOnATckRNabMUDYWEhbAaKVWq7jlmqgPy', 'aktif', 'BkgVvNwIrDiBrJZVYhKvY00vdAh9xD6mwAkTWfHaSVkrEbIdbnuMPv4ruRtk', NULL, '2021-06-29 04:38:58', NULL),
(178, 'Ir. HIDAYAT, M.Sc.', '196102101986031000', '10026105', '', '', '', '0000-00-00', '', 'Peternakan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(179, 'Drs. SRI ADJI PRABAWA, M.M.', '195906161987031000', '16065906', '', '', '', '0000-00-00', '', 'Manajemen (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(180, 'EDI HERMANSYAH, S.H., M.H.', '197202021998021000', '2027211', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(181, 'Dr. AGUS MARTONO HADI PUTRANTO, DEA.', '196103121986021000', '12036106', '', '', '', '0000-00-00', '', 'Kimia (S2)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(182, 'SULARSIH ANGGARAWATI, S.E., M.B.A.', '195904141987032000', '14045910', '', '', '', '0000-00-00', '', 'Manajemen (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(183, 'Dr. Drs. ROHMAT BASUKI, M.Hum.', '195812301987031000', '30125810', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Indonesia (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(184, 'PAULUS SULLUK KANANLUA, S.E., M.Si.', '195805101989031000', '10055810', '', '', '', '0000-00-00', '', 'Manajemen (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(185, 'Dr. Drs. WAHYUDI ARIANTO, M.Si.', '196801171993031000', '17116809', '', '', '', '0000-00-00', '', 'Kehutanan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(186, 'Ir. MERAKATI HANDAJANINGSIH, M.Sc.', '196205111987022000', '11056207', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(187, 'Dr. Ir. MOHAMMAD CHOZIN, M.Sc.', '196002081986031000', '8026004', '', '', '', '0000-00-00', '', 'Ilmu Pertanian (S3)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(188, 'Dr. Ir. DWI WAHYUNI GANEFIANTI, MS.', '196311141988032000', '14116308', '', '', '', '0000-00-00', '', 'Ilmu Pertanian (S3)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(189, 'YULIAN FAUZI, S.Si., M.Si.', '197207271998021000', '27077205', '', '', '', '0000-00-00', '', 'Matematika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(190, 'Dr. KHAIRUL AMRI, ST., MT.', '197202121998021000', '12027201', '', '', '', '0000-00-00', '', 'Teknik Sipil (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(191, 'Dr. Drs. EKO SWISTORO WARIMUN, M.Pd.', '195611231983121000', '23115605', '', '', '', '0000-00-00', '', 'Pendidikan Profesi Guru (Profesi)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(192, 'Dr. JARULIS, S.Si., M.Si.', '197511252005011000', '25117507', '', '', '', '0000-00-00', '', 'Biologi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL);
INSERT INTO `user` (`id_user`, `nama_user`, `nip_user`, `nidn_user`, `email_user`, `no_hp_user`, `alamat_user`, `tgl_lahir_user`, `jenis_kelamin_user`, `prodi_user`, `fakultas_user`, `hak_akses`, `foto_profil`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(193, 'FEPY SUPRIANI, ST., MT.', '197402091999032000', '9027401', '', '', '', '0000-00-00', '', 'Teknik Sipil (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(194, 'NURUL ASTUTY YENSY B., S.Si., M.Si.', '197504092006042000', '9047504', '', '', '', '0000-00-00', '', 'Pendidikan Matematika (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(195, 'Prof. Dr. MORINA ADFA, S.SI., M.Si.', '197310312000032000', '31107302', '', '', '', '0000-00-00', '', 'Kimia (S2)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(196, 'Dr. FAHRUDIN JS PAREKE, S.E., M.Si.', '197109141999031000', '14097102', '', '', '', '0000-00-00', '', 'Manajemen (S2)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(197, 'Prof. Ir. MARULAK SIMARMATA, M.Sc., Ph.D.', '196104261986031000', '26046107', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(198, 'Prof. Dr. Ir. RIDWAN YAHYA, M.Sc.', '196805111993031000', '11056804', '', '', '', '0000-00-00', '', 'Kehutanan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(199, 'Drs. HERMAN, M.Pd.', '196005101987101000', '10056012', '', '', '', '0000-00-00', '', 'Pendidikan Guru Sekolah Dasar (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(200, 'Prof. Dr. IRFAN GUSTIAN, S.Si., M.Si.', '197208041998021000', '4087202', '', '', '', '0000-00-00', '', 'Kimia (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(201, 'Dr. SUSETYO, M.Pd.', '195511071983031000', '7115504', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Indonesia (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(202, 'Dr. INDRA CAHYADINATA, S.P., M.Si.', '197805072001121000', '7057804', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(203, 'SUPIYATI, S.Si., M.Si.', '197401102000122000', '10017403', '', '', '', '0000-00-00', '', 'Fisika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(204, 'Dr. Ir. ANDI IRAWAN, M.Si.', '196909091994031000', '9096904', '', '', '', '0000-00-00', '', 'Agribisnis (S2)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(205, 'Dr. ELEK TISON SOMI, SH., M.Hum.', '197704262008121000', '26047703', '', '', '', '0000-00-00', '', 'Kenotariatan (S2)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(206, 'Drs. MUKHRIZAL, M.APP.Ling.', '195909171986011000', '17095909', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(207, 'Dr. Drs. ALAMSYAH HARAHAP, M.Lib.', '196005171983121000', '17056007', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(208, 'SLAMET WIDODO, SE., MS., Ph.D.', '196112211987021000', '21126109', '', '', '', '0000-00-00', '', 'Manajemen (S2)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(209, 'Dr. Drs. SYAHRIAL, MA., M.Phil.', '195806161985031000', '16065807', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(210, 'Dr. Drs. ZAMZAILI, M.Pd.', '195808051986031000', '5085807', '', '', '', '0000-00-00', '', 'Pendidikan Matematika (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(211, 'Dr. Dra. NINA KURNIAH, M.Pd.', '196210141986012000', '14106207', '', '', '', '0000-00-00', '', 'Teknologi Pendidikan (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(212, 'Drs. SYARIFUDDIN, MS.', '195806041986031000', '4065810', '', '', '', '0000-00-00', '', 'Biologi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(213, 'Dr. DIAN EKA CHANDRA WARDHANA, M.Pd.', '195911041984032000', '4115904', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Indonesia (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(214, 'Drs. MULYADI, MA.', '195910241987021000', '24105908', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(215, 'Drs. SYAFRIAL, M.Kes', '196106151986031000', '15066114', '', '', '', '0000-00-00', '', 'Pendidikan Jasmani dan Kesehatan (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(216, 'Dr. Drs. OSA JUARSA, M.Pd.', '196206151986031000', '15066203', '', '', '', '0000-00-00', '', 'Pendidikan Profesi Guru (Profesi)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(217, 'Ir. KANANG SETIYO HINDARTO, M.Sc.', '195905201984031000', '20055913', '', '', '', '0000-00-00', '', 'Ilmu Tanah (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(218, 'Drs. HASAN BASRI DAULAY, MS.', '195612091986031000', '9125614', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(219, 'Dra. HILDA PUSPITA, MA.', '196104291987022000', '29046106', '', '', '', '0000-00-00', '', 'Pendidikan Profesi Guru (Profesi)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(220, 'Ir. HERMANSYAH, MP.', '195712071986031000', '7125703', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(221, 'Ir. HERRY GUSMARA, M.Sc.', '196008141985031000', '14086005', '', '', '', '0000-00-00', '', 'Ilmu Tanah (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(222, 'Dr. MUHAMMAD RUSDI, SE., M.Si.', '196211251988031000', '25116204', '', '', '', '0000-00-00', '', 'Perencanaan Pembangunan (S2)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(223, 'Dr. Ir. HERY SUHARTOYO, M.Sc.', '196306251987031000', '25066305', '', '', '', '0000-00-00', '', 'Kehutanan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(224, 'Dr. MOCHAMAD RIDWAN, SE., MP.', '196107101988031000', '10076111', '', '', '', '0000-00-00', '', 'Ilmu Ekonomi (S3)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(225, 'Dra. SRI KEN KUSTIANTI, M.Pd.', '195612281984032000', '28125909', '', '', '', '0000-00-00', '', 'Pendidikan Guru Sekolah Dasar (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(226, 'Dr. Ir. IRNAD, M.Sc.', '196005101988031000', '10056005', '', '', '', '0000-00-00', '', 'Agribisnis (S2)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(227, 'Dr. Drs. AWAL ISGIYANTO, M.Kes.', '195905121986021000', '12055911', '', '', '', '0000-00-00', '', 'Statistika (S2)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(228, 'Dr. M. FAIZ BARCHIA, M.Sc.', '195911201986031000', '20115907', '', '', '', '0000-00-00', '', 'Pengelolaan Sumber Daya Alam & Lingkungan (S2)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(229, 'YUSNIDA, SE., M.Si.', '196112221988032000', '22126109', '', '', '', '0000-00-00', '', 'Ekonomi Pembangunan (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(230, 'Drs. LIPNELDI, M.Si.', '195801051988031000', '5015807', '', '', '', '0000-00-00', '', 'Ilmu Administrasi Negara (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(231, 'Dr. Drs. SURYADI, M.Hum.', '196012021989031000', '2126006', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa dan Sastra Indonesia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(232, 'ARMELLY, SE., M.Si.', '196503251990012000', '25036511', '', '', '', '0000-00-00', '', 'Ekonomi Pembangunan (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(233, 'FITRAWATI ILYAS, SE., M.Bus., CPA.', '196311231990012000', '23116305', '', '', '', '0000-00-00', '', 'Akuntansi (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(234, 'Dra. RADEN RORO SRI ASTUTI, MS.', '196103281989012000', '28036108', '', '', '', '0000-00-00', '', 'Biologi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(235, 'Drs. AMRIZAL, M.Hum.', '195907101985031000', '10075905', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa dan Sastra Indonesia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(236, 'Ir. MUKHTASAR, M.Si.', '196504011990011000', '1046505', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(237, 'Dr. Ir. ENGGAR APRIYANTO, M.Sc.', '196104071987031000', '7046105', '', '', '', '0000-00-00', '', 'Pengelolaan Sumber Daya Alam & Lingkungan (S2)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(238, 'DARMAN, SE.Ak., MM.', '195802071990011000', '7025804', '', '', '', '0000-00-00', '', 'Akuntansi (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(239, 'Dr. Ir. USMAN SISWANTO, M.Sc.', '196211061987031000', '6116208', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(240, 'Dr. Dra. PURMINI, M.Sc.', '196302161989032000', '16026308', '', '', '', '0000-00-00', '', 'Perencanaan Pembangunan (S2)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(241, 'Dra. AFIFATUS SHOLIHAH, M.Pd.', '195810101987032000', '10105819', '', '', '', '0000-00-00', '', 'Bimbingan dan Konseling (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(242, 'Dr. Drs. FANANI HARYO WIDODO, M.Sc.', '195805061987031000', '6055807', '', '', '', '0000-00-00', '', 'Statistika (S2)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(243, 'Dr. Dra. RIA ARIESTA, M.Pd.', '196204011986012000', '1046207', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa dan Sastra Indonesia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(244, 'MERRI ANITASARI, SE., MA.', '196605031990012000', '3056607', '', '', '', '0000-00-00', '', 'Ekonomi Pembangunan (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(245, 'Ir. AGUSTINA ERNI SUSIYANTI, M.Sc.', '196208241987022000', '24086210', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(246, 'Dra. YARMANI, S.Pd., M.Kes.', '196204031988032000', '3046210', '', '', '', '0000-00-00', '', 'Pendidikan Jasmani dan Kesehatan (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(247, 'Dr. SALEH HAJI, M.Pd.', '196005251986011000', '25056008', '', '', '', '0000-00-00', '', 'Pendidikan Matematika (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(248, 'Ir. EDHI TURMUDI, MS.', '195709201987021000', '20095705', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(249, 'EDY RAHMANTYO TARSILOHADI, SE., M.Sc.', '195606261988031000', '26065606', '', '', '', '0000-00-00', '', 'Ekonomi Pembangunan (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(250, 'Dr. EMELIA KONTESA, SH., M.Hum.', '196407011989102000', '1076406', '', '', '', '0000-00-00', '', 'Kenotariatan (S2)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(251, 'BAMBANG AGOES HERMANTO, SE., M.Sc.', '196208191988031000', '19086208', '', '', '', '0000-00-00', '', 'Perencanaan Pembangunan (S2)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(252, 'Drs. ARASULI, M.Si.', '195811211985031000', '21115806', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(253, 'Dr. Drs. MANAP, M.Pd.', '195905201986031000', '20055914', '', '', '', '0000-00-00', '', 'Administrasi Pendidikan (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(254, 'Dra. ELFRIDA, M.Pd.', '196103251984032000', '25036105', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (D3)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(255, 'Dr. Ir. TUNJUNG PAMEKAS, M.Sc.', '196503141989031000', '14036506', '', '', '', '0000-00-00', '', 'Proteksi Tanaman (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(256, 'Drs. PADI UTOMO, M.Pd.', '196111071986091000', '7116106', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa dan Sastra Indonesia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(257, 'WEMBRAYARLI, S.Pd., M.Sn', '196112051991031000', '5126112', '', '', '', '0000-00-00', '', 'Pendidikan Guru PAUD (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(258, 'Dr. Drs. IRWAN KOTO, MA.', '196104011986031000', '1046108', '', '', '', '0000-00-00', '', 'Pendidikan Dasar (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(259, 'Dra. WURDJINEM, M.Si.', '195604111985032000', '11045606', '', '', '', '0000-00-00', '', 'Pendidikan Guru Sekolah Dasar (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(260, 'NASUTION, SE., MDM.', '196207071991031000', '7076208', '', '', '', '0000-00-00', '', 'Manajemen (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(261, 'Drs. TONO SUGIHARTONO, M.Pd.', '196208231988031000', '23086207', '', '', '', '0000-00-00', '', 'Pendidikan Jasmani dan Kesehatan (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(262, 'Drs. AGUS JOKO PURWADI, M.Pd.', '195908281984031000', '28085912', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa dan Sastra Indonesia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(263, 'DELI WARYENTI, S.H., M.Hum.', '196108231987022000', '23086107', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(264, 'PATRICIA EKOWATI SURYANINGSIH, SH., M.Hum.', '196003171987032000', '17036009', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(265, 'Dr. Ir. AGUS SUSATYA, M.Sc.', '196108161987031000', '16086110', '', '', '', '0000-00-00', '', 'Pengelolaan Sumber Daya Alam & Lingkungan (S2)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(266, 'Dr. Ir. SUMARDI, MP.', '196403031991031000', '3036406', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(267, 'Dra. RESNANI, M.Si.', '195808111983032000', '11085811', '', '', '', '0000-00-00', '', 'Pendidikan Guru Sekolah Dasar (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(268, 'NURLAILI, S.Sos., M.Kes.', '195910201981122000', '3420105901', '', '', '', '0000-00-00', '', 'Keperawatan (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(269, 'Drs. PURWAKA, M.Lib.', '196311171988031000', '17116304', '', '', '', '0000-00-00', '', 'Ilmu Perpustakaan (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(270, 'Dr. Ir. USMAN KRISJOKO SUHARJO, M.Sc.', '196110281987021000', '28106105', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(271, 'Dr. Drs. SUGENG SUHARTO, M.Si.', '196608192000121000', '19086608', '', '', '', '0000-00-00', '', 'Ilmu Administrasi (S2)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(272, 'Dr. Ir. ABIMANYU DIPO NUSANTARA, MP.', '195612251986031000', '25125615', '', '', '', '0000-00-00', '', 'Ilmu Tanah (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(273, 'Drs. MUH. MARWAN ARWANI, M.Si.', '195909211988031000', '21095906', '', '', '', '0000-00-00', '', 'Sosiologi (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(274, 'ESTI SORENA, SST., SKM., M.Kes.', '196402111988012000', '3411026401', '', '', '', '0000-00-00', '', 'Keperawatan (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(275, 'Drs. SULISTYA WARDAYA, M.Si.', '196006301988031000', '30066006', '', '', '', '0000-00-00', '', 'Perpustakaan (D3)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(276, 'Ir. DESIA KAHARUDDIN, MP.', '196006171986032000', '17066007', '', '', '', '0000-00-00', '', 'Peternakan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(277, 'Ir. MARNIZA, M.Si.', '196507051990032000', '5076502', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(278, 'Dra. DEVI SILSIA, M.Si.', '196902151995012000', '5026906', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(279, 'REFRIZON, S.Si., M.Si.', '196902201996011000', '20026905', '', '', '', '0000-00-00', '', 'Geofisika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(280, 'Drs. SYAHRIMAN, M.Pd.', '196004141986091000', '14046008', '', '', '', '0000-00-00', '', 'Bimbingan dan Konseling (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(281, 'Drs. INDRA SAKTI, M.Pd.', '195912131984031000', '13125908', '', '', '', '0000-00-00', '', 'Pendidikan IPA (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(282, 'Dr. AGUS  SUNDARYONO, M.Si', '196008061987031000', '6086006', '', '', '', '0000-00-00', '', 'Pendidikan IPA (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(283, 'MEILIANI, SE., M.Com., Ph.D.', '196705241992032000', '24056706', '', '', '', '0000-00-00', '', 'Manajemen (S2)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(284, 'KASMAINI, SS., M.Pd.', '197208251997022000', '25087211', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (D3)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(285, 'ALEX SURAPATI, ST., MT.', '197003151998021000', '15037002', '', '', '', '0000-00-00', '', 'Teknik Elektro (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(286, 'Dr. Ir. YULIAN, M.Sc.', '196307051988031000', '5076313', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(287, 'SARDANIAH, SST., M.Kes.', '196610101990032000', '3410106601', '', '', '', '0000-00-00', '', 'Keperawatan (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(288, 'Dra. NOVIA, MS.', '196011241987022000', '24116004', '', '', '', '0000-00-00', '', 'Biologi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(289, 'Dr. Ir. RENY HERAWATI, MP.', '196501011989032000', '1016527', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(290, 'SUHENDRA, S.Si., MT.', '197109281999031000', '28097106', '', '', '', '0000-00-00', '', 'Geofisika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(291, 'Drs. HERY HARYANTO, M.Sc.', '196104071987031000', '7046106', '', '', '', '0000-00-00', '', 'Biologi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(292, 'Dr. RETNO AGUSTINA EKAPUTRI, M.Sc.', '196208031986032000', '3086205', '', '', '', '0000-00-00', '', 'Ilmu Ekonomi (S3)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(293, 'Dr. CANDRA IRAWAN, SH., M.Hum.', '197310151997021000', '15107305', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(294, 'HALAUDDIN, S.Si., MT.', '197101241999031000', '24017102', '', '', '', '0000-00-00', '', 'Geofisika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(295, 'Dr. Drs. ALEX ABDU CHALIK, M.Si.', '196204181988031000', '18046205', '', '', '', '0000-00-00', '', 'Ilmu Komunikasi (S2)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(296, 'Dr. ARIES MUNANDAR, S.Sos., M.Si.', '197404121993111000', '12047415', '', '', '', '0000-00-00', '', 'Ilmu Kesejahteraan Sosial (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(297, 'Ir. TRIS AKBARILLAH, MP.', '196102231989032000', '23026104', '', '', '', '0000-00-00', '', 'Peternakan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(298, 'IKHSAN, S.Kep., M.Kes.', '197108091996021000', '3409087101', '', '', '', '0000-00-00', '', 'Farmasi (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(299, 'Ns. TITIN APRILATUTINI, S.Kep., M.Pd.', '197604141998032000', '3414047602', '', '', '', '0000-00-00', '', 'Keperawatan (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(300, 'Dr. ARONO, S.Pd., M.Pd.', '197703142005011000', '11037704', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa dan Sastra Indonesia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(301, 'Ns. NOVA YUSTISIA, S.Kep., M.Kep.', '197408081997022000', '3408087401', '', '', '', '0000-00-00', '', 'Farmasi (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(302, 'Dra. HASNAWATI, M.Si.', '195904211986032000', '21045910', '', '', '', '0000-00-00', '', 'Pendidikan Guru Sekolah Dasar (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(303, 'Drs. SYAFNIL, M.Si.', '196307221994031000', '22076304', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(304, 'ANDIK PURWANTO, S.Pd., M.Si.', '198011022005011000', '2118003', '', '', '', '0000-00-00', '', 'Pendidikan Fisika (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(305, 'Ir. REDY BADRUDIN, MM.', '196010261987031000', '26106006', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(306, 'Dr. Ir. RUSTIKAWATI, MP.', '196505081990012000', '8056504', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(307, 'Ir. HARTAL, MP.', '195807231986031000', '23075807', '', '', '', '0000-00-00', '', 'Proteksi Tanaman (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(308, 'MAWARDI, ST., MT.', '196805202000121000', '20056805', '', '', '', '0000-00-00', '', 'Teknik Sipil (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(309, 'Dr. NURNA AZIZA N., SE., M.Si., Ak.', '197605102000032000', '10057601', '', '', '', '0000-00-00', '', 'Akuntansi (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(310, 'ZULFIA MEMI MAYASARI, S.Si., M.Si.', '197312021998022000', '2127301', '', '', '', '0000-00-00', '', 'Matematika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(311, 'Ir. EDI SOETRISNO, M.Sc.', '196012271986031000', '27126006', '', '', '', '0000-00-00', '', 'Peternakan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(312, 'Dra. SRI HANDAYANI HANUM, M.Si.', '196303251989012000', '25036305', '', '', '', '0000-00-00', '', 'Sosiologi (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(313, 'Ir. MEIZUL ZUKI, MS.', '195905031986031000', '3055905', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(314, 'LISA MARTIAH NILA PUSPITA, SE., M.SI.', '197411202000032000', '20117409', '', '', '', '0000-00-00', '', 'Akuntansi (D3)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(315, 'Dr. HAJAR GELIS PRAMUDYASMONO, MA.', '196411061990011000', '6116403', '', '', '', '0000-00-00', '', 'Ilmu Administrasi (S2)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(316, 'Dr. GUSTA GUNAWAN, ST., MT.', '197303181998021000', '18037301', '', '', '', '0000-00-00', '', 'Arsitektur (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(317, 'SYAMSUL BACHRI, SE., M.Si .', '195601021986031000', '2015604', '', '', '', '0000-00-00', '', 'Manajemen (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(318, 'Ir. NYAYU NETI ARIANTI, M.Si.', '196810271994032000', '27106803', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(319, 'TRISNA MURNI, SE., M.Si.', '196310071988032000', '7106303', '', '', '', '0000-00-00', '', 'Manajemen (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(320, 'Drs. MUHAMMAD ARIFIN, M.Pd.', '196505091989011000', '9056506', '', '', '', '0000-00-00', '', 'Pendidikan Profesi Guru (Profesi)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(321, 'Drs. HERI SUPRIYANTO, M.Si.', '195503121985031000', '12035503', '', '', '', '0000-00-00', '', 'Perpustakaan (D3)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(322, 'Dr. Eng. DEDI SURYADI, ST., MT.', '197908222003121000', '22087902', '', '', '', '0000-00-00', '', 'Teknik Mesin (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(323, 'Ir. NADRAWATI, MP.', '196004121986032000', '12046011', '', '', '', '0000-00-00', '', 'Proteksi Tanaman (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(324, 'Dr. EFFED DARTA, SE., MBA.', '196605301992031000', '30056604', '', '', '', '0000-00-00', '', 'Manajemen (S2)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(325, 'Dr. FITRI SANTI, SE., M.Si.', '197510062000122000', '6107503', '', '', '', '0000-00-00', '', 'Manajemen (S3)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(326, 'NILA APRILA, SE., M.Si.Ak.', '197504152001122000', '15047502', '', '', '', '0000-00-00', '', 'Akuntansi (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(327, 'Drs. SUNOTO, M.Si.', '196102121987021000', '12026110', '', '', '', '0000-00-00', '', 'Ekonomi Pembangunan (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(328, 'Drs. ABAS, M.Pd', '196411151991031000', '15116406', '', '', '', '0000-00-00', '', 'Pendidikan Biologi (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(329, 'SAMSUL BAHRI, ST., MT.', '197208092000031000', '9087204', '', '', '', '0000-00-00', '', 'Arsitektur (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(330, 'Dr. Ir. SIGIT SUDJATMIKO, M.Sc.', '196001281986031000', '28016005', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S2)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(331, 'Dr. HJ. DEWI HERAWATY, S.Pd., M.Pd.', '197103291994122000', '29037104', '', '', '', '0000-00-00', '', 'Pendidikan Matematika (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(332, 'Dr. WILLY ABDILLAH, SE., M.Sc.', '197907292005011000', '29077904', '', '', '', '0000-00-00', '', 'Manajemen (S2)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(333, 'Dr. MACHYUDIN AGUNG HARAHAP, S.Sos., M.Si.', '197405012000121000', '1057406', '', '', '', '0000-00-00', '', 'Ilmu Komunikasi (S2)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(334, 'Dr. MOCHAMAD LUTFI FIRDAUS, S.Si., M.T.', '197310222000031000', '22107303', '', '', '', '0000-00-00', '', 'Pendidikan IPA (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(335, 'DEWI RAHIMAH, S.Pd., M.Ed.', '198203282005012000', '28038201', '', '', '', '0000-00-00', '', 'Pendidikan Matematika (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(336, 'Dr. Ir. SATRIA PUTRA UTAMA, M.Sc.', '196006121986091000', '12066010', '', '', '', '0000-00-00', '', 'Agribisnis (S2)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(337, 'Dr. HENDRI  HESTIAWAN, ST., MT.', '197407042003121000', '4077403', '', '', '', '0000-00-00', '', 'Teknik Mesin (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(338, 'MUHAMAD ABDUH, SE., M.Sc., Ph.D.', '196801261992031000', '26016805', '', '', '', '0000-00-00', '', 'Ilmu Ekonomi (S3)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(339, 'RUSDI EFENDI, ST., M.Kom.', '198101122005011000', '12018102', '', '', '', '0000-00-00', '', 'Teknik Informatika (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(340, 'FACHRI FAISAL, S.Si., M.Si.', '197104031998021000', '3047102', '', '', '', '0000-00-00', '', 'Matematika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(341, 'Dr. BAIHAQI, SE., M.Si. Ak.', '197006031999031000', '3067003', '', '', '', '0000-00-00', '', 'Akuntansi (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(342, 'DEVI RATNAWATI, S.Pd., M.Si.', '198203012006042000', '1038202', '', '', '', '0000-00-00', '', 'Farmasi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(343, 'ANGKY PUSPAWAN, ST., M.Eng.', '197710212005011000', '21107703', '', '', '', '0000-00-00', '', 'Teknik Mesin (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(344, 'IRNANDA PRIYADI, ST., MT.', '197604102003121000', '10047603', '', '', '', '0000-00-00', '', 'Teknik Elektro (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(345, 'Dr. Ir. DWATMADJI, M.Sc.', '196203121986031000', '12036207', '', '', '', '0000-00-00', '', 'Peternakan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(346, 'ABDULLAH, SE., M.Si.Akt.', '196807281998021000', '28076804', '', '', '', '0000-00-00', '', 'Akuntansi (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(347, 'Dr. ROOSE MARINA ANGGRAINI RAMBE, SE., MBA.', '197108291997022000', '29087106', '', '', '', '0000-00-00', '', 'Ilmu Ekonomi (S3)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(348, 'EVI MARYANTI, S.Si., M.Si.', '198203212005012000', '21038203', '', '', '', '0000-00-00', '', 'Kimia (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(349, 'Dra. DALIFA, M.Pd.', '196010101986032000', '10106010', '', '', '', '0000-00-00', '', 'Pendidikan Guru Sekolah Dasar (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(350, 'Dra. ROCHMAH SUPRIATI, M.Sc.', '196107051986032000', '5076114', '', '', '', '0000-00-00', '', 'Biologi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(351, 'Dr. E. LISMAWATI Z., SE., M.Si. Ak.', '197502172003122000', '17027504', '', '', '', '0000-00-00', '', 'Akuntansi (S2)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(352, 'FAISAL HADI, ST., MT.', '197707132002121000', '13077701', '', '', '', '0000-00-00', '', 'Teknik Elektro (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(353, 'drh.TATIK SUTEKY, M.Sc.', '196309161989032000', '16096306', '', '', '', '0000-00-00', '', 'Peternakan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(354, 'NIKMAH, SE., M.Si.Ak.', '197106111999032000', '11067106', '', '', '', '0000-00-00', '', 'Akuntansi (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(355, 'PRATANA PUSPA MIDIASTUTY, SE., M.Si.Ak.', '197501011999032000', '1017502', '', '', '', '0000-00-00', '', 'Akuntansi (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(356, 'Dr. Ir. DAMRES UKER, M.Sc.', '195810041986031000', '4105805', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(357, 'Dra. SRI HARTATI, M.Hum.', '195610201985032000', '20105608', '', '', '', '0000-00-00', '', 'Sosiologi (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(358, 'Drs. RUSDI, M.Pd.', '195708121985031000', '12085703', '', '', '', '0000-00-00', '', 'Pendidikan Matematika (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(359, 'Drs. PARLAN, M.Pd.', '195812191984031000', '19125808', '', '', '', '0000-00-00', '', 'Pendidikan Luar Sekolah (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(360, 'Dra. LOESIDA ROELIANA, M.Si.', '195810241986032000', '24105809', '', '', '', '0000-00-00', '', 'Ilmu Administrasi Negara (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(361, 'Drs. NESBAH, MS.', '196009231988031000', '23096005', '', '', '', '0000-00-00', '', 'Kimia (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(362, 'Ir. SRIYOTO, MS.', '195904091986091000', '9045905', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(363, 'Dr. AGUS TRIANTO, M.Pd.', '196208171986031000', '17086214', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa dan Sastra Indonesia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(364, 'Dr. ZAKARIA, M.Pd.', '195708191986031000', '19085704', '', '', '', '0000-00-00', '', 'Administrasi Pendidikan (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(365, 'Drs. BUDIYONO, M.Si.', '195903011986011000', '1035603', '', '', '', '0000-00-00', '', 'Ilmu Administrasi Negara (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(366, 'Drs. AMRIL CANRHAS, MS.', '195908051985031000', '5085908', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa dan Sastra Indonesia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(367, 'Drs. ARWIN, M.Pd.', '195908081985031000', '8085910', '', '', '', '0000-00-00', '', 'Pendidikan Jasmani dan Kesehatan (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(368, 'Drs. DIDIK SURYADI, MA.', '196204251986121000', '25046207', '', '', '', '0000-00-00', '', 'Pendidikan Guru PAUD (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(369, 'Dra. ILLAWATY SULIAN, M.Pd.', '195612091986032000', '9125615', '', '', '', '0000-00-00', '', 'Bimbingan dan Konseling (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(370, 'Ir. MUSRIYADI NABIU, MP.', '195906121986031000', '12065904', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(371, 'Drs. SYAIFULLAH, M.Ag.', '196002101991031000', '10026008', '', '', '', '0000-00-00', '', 'Perpustakaan (D3)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(372, 'Drs. SYAFRIZAL.S., MA.', '195706031988031000', '3065705', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(373, 'Dr. BAYU LUDVIANTO, M.Sc.', '196106201987031000', '20066109', '', '', '', '0000-00-00', '', 'Biologi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(374, 'Drs. MIRZA, M.Soc.Sc.', '195612301986011000', '30125607', '', '', '', '0000-00-00', '', 'Ilmu Administrasi Negara (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(375, 'Dr. Drs. M. ILHAM ABDULLAH, M.Pd.', '195911101989031000', '10115920', '', '', '', '0000-00-00', '', 'Pendidikan Luar Sekolah (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(376, 'Dra. STEFFANIE NURLIANA, MS.', '196204241986032000', '24046206', '', '', '', '0000-00-00', '', 'Biologi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(377, 'SAIFUL, SE., M.Si., Ph.D. Akt.', '197001081997021000', '8017001', '', '', '', '0000-00-00', '', 'Akuntansi (S2)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(378, 'Drs. BAMBANG DJUNAIDI, M.Hum.', '196101121986031000', '12016105', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa dan Sastra Indonesia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(379, 'Dr. Drs. SUPARMAN, M.Si.', '195807221987031000', '22075808', '', '', '', '0000-00-00', '', 'Ilmu Kesejahteraan Sosial (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(380, 'Dr. Dra. NURHAYATI DARUBEKTI, MS.', '196005181987032000', '18056007', '', '', '', '0000-00-00', '', 'Ilmu Kesejahteraan Sosial (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(381, 'HALIMATUSYADIAH, SE., M.Si. Ak.', '197107011997022000', '1077105', '', '', '', '0000-00-00', '', 'Akuntansi (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(382, 'Drs. ARI SUTISYANA, M.Pd.', '196106261987101000', '26066109', '', '', '', '0000-00-00', '', 'Pendidikan Jasmani dan Kesehatan (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(383, 'SRIWIDHARMANELY, SE., MBM.Ak.', '197207301997022000', '30077203', '', '', '', '0000-00-00', '', 'Akuntansi (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(384, 'Ir. KUSUSIYAH, MS.', '196310061988032000', '6106305', '', '', '', '0000-00-00', '', 'Peternakan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL);
INSERT INTO `user` (`id_user`, `nama_user`, `nip_user`, `nidn_user`, `email_user`, `no_hp_user`, `alamat_user`, `tgl_lahir_user`, `jenis_kelamin_user`, `prodi_user`, `fakultas_user`, `hak_akses`, `foto_profil`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(385, 'Drs. SOFINO, M.Pd.', '196211121988031000', '12116206', '', '', '', '0000-00-00', '', 'Pendidikan Luar Sekolah (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(386, 'WAFIYA, SH., M.Hum.', '197312281998022000', '28127307', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(387, 'EDDY SURANTA, SE., M.Si.Akt.', '197212071998021000', '7127209', '', '', '', '0000-00-00', '', 'Akuntansi (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(388, 'Dr. SRI PUTRI PERMATA, S.Sos., M.K.', '197010161996012000', '16107003', '', '', '', '0000-00-00', '', 'Ilmu Kesejahteraan Sosial (S2)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(389, 'Dr. IRMA BADARINA, S.Pt., MP.', '197001231997022000', '23017004', '', '', '', '0000-00-00', '', 'Peternakan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(390, 'SURIYATI, SST., M.Keb.', '197312171993022000', '3417127301', '', '', '', '0000-00-00', '', 'Kebidanan (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(391, 'EVI HAFIZAH, S.Sos., M.Si.', '197604252000122000', '25047608', '', '', '', '0000-00-00', '', 'Ilmu Komunikasi (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(392, 'BUSTANUDDIN LUBIS, SS., M.A.', '197906042002121000', '4067902', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa dan Sastra Indonesia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(393, 'SEPRIANTI EKA PUTRI, SE., M.Si.', '197509262005012000', '26097505', '', '', '', '0000-00-00', '', 'Manajemen (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(394, 'Dr. SAL PRIMAYUDHA S, S.Si., M.Si.', '197406012000031000', '1067405', '', '', '', '0000-00-00', '', 'Kimia (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(395, 'Dr. MAS AGUS FIRMANSYAH, S.Sos., M.Si.', '198005242003121000', '25057011', '', '', '', '0000-00-00', '', 'Ilmu Komunikasi (S2)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(396, 'Ir. PUTRANTO BUDIONO AGUNG.NUGROHO, M.Sc.', '196301121988031000', '12016311', '', '', '', '0000-00-00', '', 'Kehutanan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(397, 'Ns. RINA DELFINA, S.Kep., M.Kep.', '197309172003122000', '3417097301', '', '', '', '0000-00-00', '', 'Keperawatan (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(398, 'Dr. CHARLES BANON, S.Pd., M.Si.', '197405222006041000', '22057404', '', '', '', '0000-00-00', '', 'Kimia (S2)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(399, 'Ns. MAIYULIS, S.Kep., M.PH.', '197204101997021000', '3410047201', '', '', '', '0000-00-00', '', 'Farmasi (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(400, 'Dr. MUHAMAD MUSTOPA ROMDHON, SP., M.Si.', '197509151999031000', '15097508', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(401, 'HERI DWI PUTRANTO, S.Pt., M.Sc., Ph.D.', '197409052000031000', '5097409', '', '', '', '0000-00-00', '', 'Peternakan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(402, 'Dr. HARDIANSYAH, ST., MT.', '198308132008011000', '13088301', '', '', '', '0000-00-00', '', 'Teknik Sipil (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(403, 'ASEP SOFWAN FATUROHMAN ALQAP, ST., M.Tech., Ph.D', '196806152003121000', '15066806', '', '', '', '0000-00-00', '', 'Teknik Mesin (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(404, 'HENI NOPIANTI, S.Sos., M.Si.', '197811162002122000', '16117801', '', '', '', '0000-00-00', '', 'Sosiologi (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(405, 'Dr. MOHAMAD ZULKARNAIN YULIARSO, SP., M.Si.', '197307062000121000', '6077303', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(406, 'FERRY TEMA ATMAJA, SE., M.Si.', '197510142000121000', '14107502', '', '', '', '0000-00-00', '', 'Manajemen (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(407, 'RITA SINTHIA, S.Psi., M.Si.', '197806272006042000', '27067807', '', '', '', '0000-00-00', '', 'Bimbingan dan Konseling (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(408, 'Drs.YUNOFRIZAL', '196211281987031000', '28116206', '', '', '', '0000-00-00', '', 'Laboratorium Sains (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(409, 'JARMUJI, S.Pt., M.Si.', '197810092005011000', '9107803', '', '', '', '0000-00-00', '', 'Peternakan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(410, 'EKA ANGASA, M.Si.', '198012272008011000', '27128003', '', '', '', '0000-00-00', '', 'Kimia (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(411, 'REZA SATRIA RINALDI, ST., M.Eng.', '198006242005011000', '24068002', '', '', '', '0000-00-00', '', 'Teknik Elektro (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(412, 'RESWITA, SP., MM.', '198012182008012000', '18128002', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(413, 'Ir. AGUS ISWANRIJANTO, MP.', '196105121987021000', '12056105', '', '', '', '0000-00-00', '', 'Ilmu Tanah (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(414, 'Dr. PUTRI SUCI ASRIANI, SP., MP.', '197611232000122000', '23117604', '', '', '', '0000-00-00', '', 'Agribisnis (S2)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(415, 'Dr. SUHARYANTO, S.Pt., M.Si.', '197306022002121000', '2067308', '', '', '', '0000-00-00', '', 'Peternakan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(416, 'Dr. ERNIWATI, S.Hut., M.Sc.', '197409022000122000', '2097405', '', '', '', '0000-00-00', '', 'Kehutanan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(417, 'MUHAMMAD KHAIRUL AMRI ROSA, ST., MT.', '198011212005011000', '21118002', '', '', '', '0000-00-00', '', 'Teknik Elektro (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(418, 'ANGGRI PUSPITA SARI, SE., M.Si.', '198208262008122000', '26088202', '', '', '', '0000-00-00', '', 'Manajemen (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(419, 'Dr. GUSHEVINALTI, S.Sos., M.Si.', '197808162001122000', '16087804', '', '', '', '0000-00-00', '', 'Ilmu Komunikasi (S2)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(420, 'ULFASARI RAFFLESIA, S.Si., M.Si.', '198111182005012000', '18118101', '', '', '', '0000-00-00', '', 'Matematika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(421, 'Dra. BERTHA IIN ESTI INDRASWANTI, M.Si.', '196303241988112000', '24036305', '', '', '', '0000-00-00', '', 'Ekonomi Pembangunan (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(422, 'JOSE RIZAL, S.Si., M.Si.', '198006062006041000', '6068004', '', '', '', '0000-00-00', '', 'Matematika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(423, 'Ir. LAILI SUSANTI, M.Si.', '196612091991032000', '9126604', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(424, 'Ir. DEDE HARTONO, M.T.', '196006261986031000', '26066008', '', '', '', '0000-00-00', '', 'Ilmu Kelautan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(425, 'Dr. WISMA YUNITA, S.Pd., M.Pd.', '197802072005012000', '7027803', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(426, 'HELDA RAHMASARI, SH., MH.', '198009222008122000', '22098002', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(427, 'Dr. RINA SUTHIA HAYU, SE., MM.', '198203272009122000', '227038201', '', '', '', '0000-00-00', '', 'Manajemen (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(428, 'BESPERI, ST., MT.', '196904172000121000', '17046906', '', '', '', '0000-00-00', '', 'Teknik Sipil (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(429, 'WIWIT, S.Si., M.Si.', '198205122008122000', '12058204', '', '', '', '0000-00-00', '', 'Pendidikan Kimia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(430, 'DESY HANISA PUTRI, S.Pd., M.Si.', '198104112006042000', '11048102', '', '', '', '0000-00-00', '', 'Pendidikan Fisika (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(431, 'GHUFIRA, S.Si., M.Si.', '197912222008122000', '22127908', '', '', '', '0000-00-00', '', 'Kimia (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(432, 'Dr. BAMBANG PARMADI, S.Pd., M.Sn.', '197405062000121000', '6057407', '', '', '', '0000-00-00', '', 'Pendidikan Guru Sekolah Dasar (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(433, 'Dr. HESTI PUJIWATI, SP, M.Si.', '197711212006042000', '21117703', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(434, 'ASHAR MUDA LUBIS, S.Si., M.Sc., Ph.D.', '197712122001121000', '12127701', '', '', '', '0000-00-00', '', 'Geofisika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(435, 'AGUSTIN ZARKANI, SP., M.Si., Ph.D.', '198008042005011000', '4088001', '', '', '', '0000-00-00', '', 'Proteksi Tanaman (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(436, 'SUSRI ADENI, S.Sos., M.A.', '197910082005012000', '8107902', '', '', '', '0000-00-00', '', 'Jurnalistik (D3)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(437, 'DEDY HAMDANI, S.Si., M.Si.', '197911252003121000', '25117901', '', '', '', '0000-00-00', '', 'Pendidikan Fisika (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(438, 'Dr. GITA MULYASARI, SP., M.Si.', '198311302006042000', '30098301', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(439, 'HERLITA ERYKE, SH., MH.', '198102212005012000', '21028103', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(440, 'EKO RISDIANTO, S.Si., M.Cs.', '198012312005011000', '31128005', '', '', '', '0000-00-00', '', 'Pendidikan Fisika (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(441, 'Dr. IRWANSYAH, SE, M.Si.Ak.', '197210041999031000', '4107205', '', '', '', '0000-00-00', '', 'Akuntansi (S2)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(442, 'RENA MISLINIYATI, ST., MT.', '198201212006042000', '21018202', '', '', '', '0000-00-00', '', 'Teknik Sipil (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(443, 'YULI RODIAH, ST., MT.', '197507022001122000', '2077505', '', '', '', '0000-00-00', '', 'Teknik Elektro (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(444, 'BENARDIN, SE., MT.', '196409111991031000', '11096405', '', '', '', '0000-00-00', '', 'Ekonomi Pembangunan (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(445, 'EMA SEPTARIA, SH., MH', '198209282009122000', '28098204', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(446, 'ADITYO PRATIKNO RAMADHAN, S.IP., M.Sc.', '198306132008121000', '13068303', '', '', '', '0000-00-00', '', 'Ilmu Administrasi Negara (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(447, 'DEWI PURNAMA, S.Pi., M.Sc.', '198102112006042000', '11028104', '', '', '', '0000-00-00', '', 'Ilmu Kelautan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(448, 'AFDHAL KURNIAWAN MAINIL, ST., MT.', '198209262008011000', '26098203', '', '', '', '0000-00-00', '', 'Teknik Mesin (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(449, 'SUSI RAMADHANI, SH., M.H.', '198007252006042000', '25078002', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(450, 'Dr. SUTARNO, S.Si., M.Pd.', '198009242006041000', '24098005', '', '', '', '0000-00-00', '', 'Pendidikan IPA (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(451, 'RIANA VERSITA, S.FARM., Apt., M.FARM.', '198512112010012000', '211128501', '', '', '', '0000-00-00', '', 'Farmasi (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(452, 'CATUR WULANDARI, S.Pd., M.Pd.', '197808112005012000', '11087802', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa dan Sastra Indonesia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(453, 'Dr. YAZID ISMI INTARA, SP., M.Si.', '197407272005011000', '27077402', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(454, 'Dr. EDRA SATMAIDI, SH., MH.', '197808052005011000', '5087804', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S2)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(455, 'Dr. YESSY ELITA, S.Psi., MA.', '197911112006042000', '11117904', '', '', '', '0000-00-00', '', 'Bimbingan dan Konseling (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(456, 'Dr. HERI SUNARYANTO, MA.', '196005151985031000', '15056015', '', '', '', '0000-00-00', '', 'Sosiologi (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(457, 'ADE SRI WAHYUNI, ST., M.Eng., Ph.D.', '197506301999032000', '30067503', '', '', '', '0000-00-00', '', 'Teknik Sipil (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(458, 'APRI ANDANI, SP., M.Si.', '198204302005011000', '30048201', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(459, 'ENDINA PUTRI PURWANDARI, S.T., M.Kom.', '198701272012122000', '27018702', '', '', '', '0000-00-00', '', 'Sistem Informasi (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(460, 'Drs. SYARIF HIDAYAT, M.Pd.', '196010081986031000', '8106008', '', '', '', '0000-00-00', '', 'Pendidikan Biologi (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(461, 'Ir. HERU WIDIYONO, MS.', '196212031987031000', '3126205', '', '', '', '0000-00-00', '', 'Ilmu Tanah (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(462, 'Ir. SUTRIYONO, MS.', '196002111985031000', '11026005', '', '', '', '0000-00-00', '', 'Peternakan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(463, 'Ir. TRI SUNARDI, MP.', '195604281987031000', '28045603', '', '', '', '0000-00-00', '', 'Proteksi Tanaman (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(464, 'Dr. Ir. SIGIT BUDI SUDJALMO, M.Sc.', '196005161987021000', '16056007', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(465, 'Ir. FEDRIK KINI, M.Si.', '195810191987031000', '19105806', '', '', '', '0000-00-00', '', 'Ilmu Kelautan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(466, 'Ir. WARNOTO, MP.', '196012271986031000', '27126007', '', '', '', '0000-00-00', '', 'Peternakan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(467, 'Ir. YUSRIL DANY, M.Si.', '195612281987021000', '28125610', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(468, 'Dr. Ir. R. TEGUH ADIPRASETYO, M.Sc.', '195910071987021000', '7105911', '', '', '', '0000-00-00', '', 'Pengelolaan Sumber Daya Alam & Lingkungan (S2)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(469, 'Drs. CUCU SYAMSUDIN, MPSSp.', '195705121987031000', '12055706', '', '', '', '0000-00-00', '', 'Ilmu Kesejahteraan Sosial (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(470, 'Dra. INDRAWATI, M.TPd.', '196103081986032000', '8036108', '', '', '', '0000-00-00', '', 'Pendidikan Guru PAUD (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(471, 'Drs. SUARDI, M.Pd.', '195711281986031000', '28115708', '', '', '', '0000-00-00', '', 'Pendidikan Luar Sekolah (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(472, 'Dra. ERNI SUKESI, M.Pd.', '196102261986032000', '26026106', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(473, 'Ir. EKO SUPRIJONO, MP.', '196009031985031000', '3096005', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(474, 'Dra. ANNI SUPRAPTI, M.Psi.', '196205121989012000', '12056207', '', '', '', '0000-00-00', '', 'Pendidikan Guru PAUD (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(475, 'Drs. SANTUN SIHOMBING, M.Si.', '195708041984031000', '4045708', '', '', '', '0000-00-00', '', 'Pendidikan Guru Sekolah Dasar (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(476, 'Drs. DELREFI.D., M.Pd.', '196205061987101000', '6056207', '', '', '', '0000-00-00', '', 'Pendidikan Guru PAUD (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(477, 'Ir. HIDAYAT KOTO, M.Sc.', '196108181987021000', '18086109', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(478, 'Drs. ARIS ALMAHMUDI, MA.', '195707051987021000', '5075709', '', '', '', '0000-00-00', '', 'Ekonomi Pembangunan (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(479, 'Dr. Drs. AZWANDI, MA.', '195807221988031000', '22075807', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(480, 'Drs. KHAIRIL, M.Si.', '195705161989031000', '16055706', '', '', '', '0000-00-00', '', 'Jurnalistik (D3)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(481, 'Ir. ELLYS YULIARTI, M.Si.', '196607231990032000', '23076606', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(482, 'Dra. DENDI KARTINI', '196606061993032000', '6066624', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(483, 'Drs ASEP, M.Si.', '196111251988031000', '25116112', '', '', '', '0000-00-00', '', 'Perpustakaan (D3)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(484, 'Ir. DJAMILAH, MP.', '196305161990012000', '16056305', '', '', '', '0000-00-00', '', 'Proteksi Tanaman (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(485, 'Dr. FACHRUZZAMAN, SE., MDM.Ak.', '197103131996011000', '13037102', '', '', '', '0000-00-00', '', 'Manajemen (S3)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(486, 'Dr. RINI INDRIANI, SE., M.Si. Ak.', '197005311997022000', '31057003', '', '', '', '0000-00-00', '', 'Manajemen (S3)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(487, 'Dr. FADLI, SE., M.Si.Akt.', '197302031998021000', '3027305', '', '', '', '0000-00-00', '', 'Akuntansi (S2)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(488, 'Dr. Ir. NANI NURIYATIN, M.Si.', '196305051994032000', '5056309', '', '', '', '0000-00-00', '', 'Kehutanan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(489, 'Dr. Eng. ASDIM, S.Si., M.Si.', '197506242000121000', '24067501', '', '', '', '0000-00-00', '', 'Kimia (S2)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(490, 'NURUL IMAN SUPARDI, ST., MP.', '197309011998021000', '1097304', '', '', '', '0000-00-00', '', 'Teknik Mesin (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(491, 'Dr. ROBINSON, SE., M.Si.Akt.', '197603082000031000', '8037604', '', '', '', '0000-00-00', '', 'Akuntansi (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(492, 'Dr. Dra. NURHAMIDAH, M.Si.', '196403081992032000', '8036404', '', '', '', '0000-00-00', '', 'Pendidikan Kimia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(493, 'YOSIE ANDRIANI HS., S.Si., M.Si., Ph.D.', '197301241999032000', '24017304', '', '', '', '0000-00-00', '', 'Laboratorium Sains (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(494, 'ELVINAWATI, S.Si., M.Si.', '197810102003122000', '10107801', '', '', '', '0000-00-00', '', 'Pendidikan Kimia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(495, 'Drs. SUMARTO WIDIONO, M.Si.', '196002111988031000', '11026004', '', '', '', '0000-00-00', '', 'Sosiologi (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(496, 'Dr. DEDI SOFYAN, S.Pd., M.Hum.', '197309261999031000', '26097308', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(497, 'Dr. GUMONO, S.Pd., M.Pd.', '197103131999031000', '13037103', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Indonesia (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(498, 'Drs. BOSMAN SIDEBANG, MP.', '196202021994031000', '2026213', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(499, 'Ns. YUSRAN HASYIMI, S.Kep., M.Kep., SP.Kep.MB.', '197110191995031000', '3419107101', '', '', '', '0000-00-00', '', 'Keperawatan (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(500, 'MUHAMMAD ALI, ST., MT.', '197201072000121000', '7017205', '', '', '', '0000-00-00', '', 'Teknik Sipil (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(501, 'Dr. WIDIYA N. ROSARI, SH., M.Hum.', '197509072006042000', '7097506', '', '', '', '0000-00-00', '', 'Kenotariatan (S2)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(502, 'YOVAN WITANTO, ST., MT.', '197705282005011000', '28057707', '', '', '', '0000-00-00', '', 'Teknik Mesin (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(503, 'Dr. IRMA DIANI, S.Pd., M.Hum.', '197212102006042000', '10127212', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(504, 'YANSEN, S.Hut., M.App.Sc., Ph.D.', '197701132002121000', '13017703', '', '', '', '0000-00-00', '', 'Kehutanan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(505, 'ZULIANTONI, ST., MT.', '197505302002121000', '30057507', '', '', '', '0000-00-00', '', 'Teknik Mesin (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(506, 'RASIANNA BR SARAGIH, S.Sos., M.Si.', '197310112002122000', '11107303', '', '', '', '0000-00-00', '', 'Sekretari (D3)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(507, 'SURATMAN, SIP., M.Si.', '197502022002121000', '2027505', '', '', '', '0000-00-00', '', 'Sekretari (D3)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(508, 'WAHYU WIDIYASTUTI, S.Sos., M.Si.', '197411102000122000', '10117404', '', '', '', '0000-00-00', '', 'Jurnalistik (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(509, 'Dr. MULIA ASTUTI, S.Si., M.Si.', '197804222002122000', '22047801', '', '', '', '0000-00-00', '', 'Statistika (S2)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(510, 'IRKHOS, S.Si., M.Si.', '197908202005011000', '20087903', '', '', '', '0000-00-00', '', 'Fisika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(511, 'RAMYA RACHMAWATI, S.Si., M.Si., Ph.D', '198009182005012000', '18098003', '', '', '', '0000-00-00', '', 'Matematika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(512, 'ANDY MAKHRIAN, S.Sos., M.Sc.', '198207132006041000', '13078201', '', '', '', '0000-00-00', '', 'Jurnalistik (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(513, 'ELHUSNA, ST., MT.', '197211271999032000', '27117202', '', '', '', '0000-00-00', '', 'Teknik Sipil (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(514, 'HELMIZAR, ST., MT., Ph.D.', '197611032005011000', '3117608', '', '', '', '0000-00-00', '', 'Teknik Mesin (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(515, 'MONA ARDINA, S.Psi., M.Psi.', '197409192001122000', '1097405', '', '', '', '0000-00-00', '', 'Pendidikan Guru PAUD (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(516, 'Dr. E.  NOVITA SARI, SE., M.Si.', '198203122008122000', '12038206', '', '', '', '0000-00-00', '', 'Akuntansi (S2)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(517, 'SEPTRI WIDIONO, SP., M.Si.', '198009032003121000', '3098002', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(518, 'SITI AISYAH, SE., MAAC.', '197805102005012000', '10057802', '', '', '', '0000-00-00', '', 'Akuntansi (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(519, 'EFFIE EFRIDA MUCHLIS, S.Pd., M.Pd.', '198205242005012000', '24058203', '', '', '', '0000-00-00', '', 'Pendidikan Matematika (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(520, 'NORI WIRAHMI, S.Farm., M.Farm., APT', '198307252010012000', '25078309', '', '', '', '0000-00-00', '', 'Farmasi (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(521, 'SYAFDI MAIZORA, S.Si., M.Pd.', '198105022005011000', '2058104', '', '', '', '0000-00-00', '', 'Pendidikan Matematika (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(522, 'SAPRINURDIN, S.Hut., M.Sc.', '198111262005011000', '26118101', '', '', '', '0000-00-00', '', 'Kehutanan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(523, 'SAMWILSON SLAMET, SKM., M.Pd., M.Kes.', '197307101998031000', '3410077301', '', '', '', '0000-00-00', '', 'Farmasi (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(524, 'DWI AJI BUDIMAN, S.Sos., MA.', '197911102005011000', '10117901', '', '', '', '0000-00-00', '', 'Jurnalistik (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(525, 'Ns. FENI EKA DIANTY, S.Kep., M.Kep.', '197302141992032000', '3414027301', '', '', '', '0000-00-00', '', 'Keperawatan (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(526, 'IRWANDI ANSORI, S.Pd., M.Si.', '197606082001121000', '8067606', '', '', '', '0000-00-00', '', 'Pendidikan Biologi (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(527, 'ERNAWATI, ST., M.Cs.', '197308142006042000', '14087304', '', '', '', '0000-00-00', '', 'Teknik Informatika (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(528, 'Dr. NURMEILIASARI, S.Pt., M.Sc.Ag.', '197905262002122000', '26057902', '', '', '', '0000-00-00', '', 'Peternakan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(529, 'ABDUL RAHMAN, S.Si., M.Si., Ph.D', '198108202006041000', '20088104', '', '', '', '0000-00-00', '', 'Pendidikan Biologi (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(530, 'AGUSTIN GUNAWAN, ST., M.Eng.', '197708052005011000', '5087705', '', '', '', '0000-00-00', '', 'Teknik Sipil (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(531, 'Ns. NURMUKAROMATIS SALEHA, M.Kep.', '197807182006042000', '3418077802', '', '', '', '0000-00-00', '', 'Keperawatan (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(532, 'AAN ERLANSHARI, ST., M.Eng.', '198112222008011000', '22128102', '', '', '', '0000-00-00', '', 'Sistem Informasi (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(533, 'I NYOMAN CANDRA, S.Si., M.Sc.', '198307292006041000', '29078301', '', '', '', '0000-00-00', '', 'Pendidikan Kimia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(534, 'SALASTRI ROHIAT, S.Pd., M.Pd.', '198104282006042000', '28048101', '', '', '', '0000-00-00', '', 'Pendidikan Kimia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(535, 'DESY AFRITA, AKS., MP.', '197605222006042000', '22057603', '', '', '', '0000-00-00', '', 'Ilmu Kesejahteraan Sosial (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(536, 'ZULMAN EFENDI, STP., M.Sc.', '197706252002121000', '25067702', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(537, 'DEWI HANDAYANI, S.Pd., M.Si.', '198212262005012000', '26128201', '', '', '', '0000-00-00', '', 'Pendidikan Kimia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(538, 'DELLA MAULIDIYA, S.Si., M.Kom.', '197902242003122000', '24027902', '', '', '', '0000-00-00', '', 'Pendidikan Matematika (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(539, 'AGUS NURAMAL, ST., MT.', '197408052008121000', '5087411', '', '', '', '0000-00-00', '', 'Teknik Mesin (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(540, 'DWITA OKTIARNI, S.Si., M.Si.', '198110202008122000', '20108101', '', '', '', '0000-00-00', '', 'Kimia (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(541, 'ARIE VATRESIA, ST., M.T.I., Ph.D.', '198502042008122000', '4028501', '', '', '', '0000-00-00', '', 'Teknik Informatika (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(542, 'SISWAHYONO, S.Hut., MP.', '197201211997031000', '21017203', '', '', '', '0000-00-00', '', 'Kehutanan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(543, 'WINDA PEBRIANTI, SH., MH.', '198302182009122000', '18028301', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(544, 'PEPI NOVIANTI, S.SI., M.Si.', '198511232008122000', '23118501', '', '', '', '0000-00-00', '', 'Statistika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(545, 'Dr. REFLIS, SP., M.Si.', '196904072000031000', '4076901', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(546, 'BARIKA, SE., M.Si.', '197809112009122000', '211097801', '', '', '', '0000-00-00', '', 'Ekonomi Pembangunan (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(547, 'SANTI NURUL KAMILAH, S.Si., M.Si.', '197705052008122000', '5057708', '', '', '', '0000-00-00', '', 'Biologi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(548, 'DESI ANDRESWARI, ST., M.Cs.', '197812072005012000', '7127803', '', '', '', '0000-00-00', '', 'Teknik Informatika (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(549, 'Dr. DIYAH PUSPITANINGRUM, ST., M.Kom.', '197610052005012000', '5107603', '', '', '', '0000-00-00', '', 'Sistem Informasi (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(550, 'SURA MENDA GINTING, S.Si., M.Sc.', '198101312005012000', '31018101', '', '', '', '0000-00-00', '', 'Pendidikan Kimia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(551, 'Dr. IWAN SETIAWAN, S.Si., M.Sc.', '198009112010121000', '11098005', '', '', '', '0000-00-00', '', 'Pendidikan Fisika (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(552, 'YUZUAR AFRIZAL, ST., MT.', '198008232008121000', '23088007', '', '', '', '0000-00-00', '', 'Teknik Sipil (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(553, 'MEI HARDIAH, SS., M.A.', '198005032008012000', '3058014', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (D3)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(554, 'ZAHRIDA, SS., M.Hum.', '197407012000032000', '1077403', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (D3)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(555, 'Dr. RISKA EKAWITA, S.Si., M.Si.', '198209152005012000', '15098206', '', '', '', '0000-00-00', '', 'Fisika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(556, 'Dr. LIZALIDIAWATI, S.Si., M.Si.', '197710072002122000', '7107703', '', '', '', '0000-00-00', '', 'Fisika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(557, 'Dr. LISA ADHRIANTI, S.Sos., M.Si.', '198209302005012000', '30098201', '', '', '', '0000-00-00', '', 'Ilmu Komunikasi (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(558, 'RATU EVA FEBRIANI, SE., M.Sc.', '198402032008122000', '3028401', '', '', '', '0000-00-00', '', 'Ekonomi Pembangunan (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(559, 'Dr. DIAN PUJIANTO, S.Pd.Jas., M.Or.', '198005102009121000', '10058009', '', '', '', '0000-00-00', '', 'Pendidikan Jasmani dan Kesehatan (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(560, 'RAHMA FITRI, SH., MH.', '198406112010122000', '11068403', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(561, 'dr. ZAYADI ZAINUDDIN, M.Pd.Ked., SP.K.F.R.', '198312252009121000', '25128301', '', '', '', '0000-00-00', '', 'Profesi Dokter (Profesi)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(562, 'ERINOFIARDI, ST., MT.', '197202211999031000', '21027204', '', '', '', '0000-00-00', '', 'Teknik Mesin (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(563, 'YENNY SARIASIH, SP., M.Sc.', '198108112006042000', '11088101', '', '', '', '0000-00-00', '', 'Proteksi Tanaman (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(564, 'IKA NOVIA ANGGRAINI, ST., M.Eng.', '198111072006042000', '7118101', '', '', '', '0000-00-00', '', 'Teknik Elektro (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(565, 'IDHIA SRILIANA, S.Si., M.Si.', '198608162008122000', '16088601', '', '', '', '0000-00-00', '', 'Statistika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(566, 'EFRATENTA KATHERINA DEPARI, S.Hut., M.Si.', '198111082006042000', '8118104', '', '', '', '0000-00-00', '', 'Kehutanan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(567, 'AFRIYASTUTI HERAWATI, ST., MT.', '198205012008122000', '1058203', '', '', '', '0000-00-00', '', 'Teknik Elektro (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(568, 'DEWI RAHMAYANTI, SE., MSM.', '198107052008012000', '5078104', '', '', '', '0000-00-00', '', 'Manajemen (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(569, 'YESSY ROSALINA, STP., M.Si.', '198104082005012000', '8048102', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(570, 'GITA MUTIARA HATI, S.Pd., M.Pd.', '198310222006042000', '22108301', '', '', '', '0000-00-00', '', 'Bahasa Inggris (D3)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(571, 'FITRIANTY WARDHANI, S.T., M.T.', '198407122009012000', '12078406', '', '', '', '0000-00-00', '', 'Arsitektur (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(572, 'AHMAD FAUZAN SURYONO, ST., M.T.', '198111142008121000', '14118106', '', '', '', '0000-00-00', '', 'Teknik Mesin (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(573, 'HENDRI VAN HOTEN, ST., MT.', '198203252008121000', '25038203', '', '', '', '0000-00-00', '', 'Teknik Mesin (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(574, 'INDAH DAMAYANTI, SS., M.RS.', '197808292008012000', '29087804', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (D3)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(575, 'ETIS SUNANDI, S.Si., M.Si.', '198712172012122000', '17128701', '', '', '', '0000-00-00', '', 'Statistika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(576, 'Ns. TUTI ANGGRIANI UTAMA, S.Kep., M.Kep.', '198001122008042000', '3412018001', '', '', '', '0000-00-00', '', 'Keperawatan (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(577, 'Dr. MIMI SUTRAWATI, SP., M.Si.', '198205232005012000', '23058201', '', '', '', '0000-00-00', '', 'Proteksi Tanaman (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(578, 'EKA NOVITA, S.Pd., M.A.', '198011032005012000', '3118001', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL);
INSERT INTO `user` (`id_user`, `nama_user`, `nip_user`, `nidn_user`, `email_user`, `no_hp_user`, `alamat_user`, `tgl_lahir_user`, `jenis_kelamin_user`, `prodi_user`, `fakultas_user`, `hak_akses`, `foto_profil`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(579, 'NOVI HENDRIKA JAYA PUTRA, S.Sos., MPSSp.', '197311282005011000', '28117306', '', '', '', '0000-00-00', '', 'Ilmu kesejahteraan Sosial (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(580, 'DWI ANGGRAINI, S.Sn., M.Pd.', '198501102008122000', '10018501', '', '', '', '0000-00-00', '', 'Pendidikan Guru Sekolah Dasar (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(581, 'MELLI SURYANTY, S.P., M.Pd', '197805162006042000', '16057803', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(582, 'RIA ANGGRAENI UTAMI, SH., MH.', '198601202008012000', '20018601', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(583, 'ALIMANSYAH, S.IP., MPA.', '197906082008011000', '8067903', '', '', '', '0000-00-00', '', 'Sekretari (D3)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(584, 'FERI NOPERMAN, S.Pd., M.Pd.', '198211062008011000', '6118203', '', '', '', '0000-00-00', '', 'Pendidikan Guru Sekolah Dasar (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(585, 'DIAN AGUSTINA, S.Si., M.Sc.', '198408172008122000', '17088402', '', '', '', '0000-00-00', '', 'Statistika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(586, 'EVANILA SILVIA, S.TP., M.Si', '197710262009122000', '26107707', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(587, 'NOVALIO DARATHA, ST., M.Sc., Ph.D.', '197911132003121000', '13117903', '', '', '', '0000-00-00', '', 'Teknik Elektro (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(588, 'dr. ENNY NUGRAHENI SULISTYORINI, M. Biomed', '198309192009122000', '19098301', '', '', '', '0000-00-00', '', 'Profesi Dokter (Profesi)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(589, 'Dr. DHANURSETO HADIPRASHADA, S.IP., M.Si.', '198412232010121000', '23128403', '', '', '', '0000-00-00', '', 'Ilmu Komunikasi (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(590, 'LINDUNG ZALBUIN MASE, S.T., M.Eng., Ph.D', '198804132015041000', '13048803', '', '', '', '0000-00-00', '', 'Teknik Sipil (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(591, 'FITRILINA, S.T., M.T.', '198108252006042000', '25088101', '', '', '', '0000-00-00', '', 'Teknik Elektro (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(592, 'FENNY MARIETZA, SE., M.AK', '198304012009122000', '1048303', '', '', '', '0000-00-00', '', 'Akuntansi (D3)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(593, 'NAFRI YANTI, S.Pd., M.Pd.', '198911142015042000', '14118902', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa dan Sastra Indonesia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(594, 'JUNAS HAIDI, S.T, M.T', '198306022014041000', '2068304', '', '', '', '0000-00-00', '', 'Teknik Elektro (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(595, 'SUKISNO, SP., M.Si.', '197904102005011000', '10047902', '', '', '', '0000-00-00', '', 'Ilmu Tanah (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(596, 'Dr. ALFARABI, S.Sos., MA.', '197909192006041000', '19097907', '', '', '', '0000-00-00', '', 'Jurnalistik (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(597, 'dr. NOVRIANTIKA LESTARI, S.Ked., M.Biomed', '198711032014042000', '3118701', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(598, 'YETTI PURNAMA, SST., M.Keb.', '197705302007012000', '3430057701', '', '', '', '0000-00-00', '', 'Kebidanan (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(599, 'YESSILIA OSIRA, S.Sos., MP.', '197508032009122000', '3087506', '', '', '', '0000-00-00', '', 'Ilmu Kesejahteraan Sosial (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(600, 'Dr. NOERMANZAH, S.Pd., M.Pd.', '198702142019031000', '213028702', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Indonesia (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(601, 'Dr. HARI SUMARDI, S.Pd., M.Si.', '198905182019031000', '118058902', '', '', '', '0000-00-00', '', 'Pendidikan Matematika (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(602, 'Dr. SYAFRYADIN, S.Pd., M.Pd.', '198806182019031000', '2018068802', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(603, 'Dr. MUHAMMAD KRISTIAWAN, S.PdI., M.Pd.', '198509162019031000', '216098501', '', '', '', '0000-00-00', '', 'Ilmu Pendidikan (S3)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(604, 'Dr. RENDY WIKRAMA WARDANA, S.Pd., M.Pd.', '198608312019031000', '31088605', '', '', '', '0000-00-00', '', 'Pendidikan IPA (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(605, 'Dr. EUIS NURSA\'ADAH, S.Pd., M.Pd.', '198403062019032000', '406038402', '', '', '', '0000-00-00', '', 'Pendidikan IPA (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(606, 'Dr. ASTI PUTRI KARTIWI, S.E., M.Pd.', '198403222019032000', '422038401', '', '', '', '0000-00-00', '', 'Administrasi Pendidikan (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(607, 'Dr. IRA MAISARAH, S.Hum., M.Pd.', '198405252019032000', '1025058404', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(608, 'Dra. YUDISIANI, M.Si.', '196012061990032000', '6126008', '', '', '', '0000-00-00', '', 'Perpustakaan (D3)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(609, 'YENNI SUHARTINI, ST., MT.', '197510182000122000', '18107506', '', '', '', '0000-00-00', '', 'Teknik Elektro (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(610, 'DERRY YUMICO, ST., MT.', '197512062006041000', '6127506', '', '', '', '0000-00-00', '', 'Teknik Sipil (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(611, 'V. SOZI KARNEFI, S.Si.', '196609291998021000', '29096607', '', '', '', '0000-00-00', '', 'Laboratorium Sains (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(612, 'EKA DEWI ANGGRAINI, SP., M.Si.', '197502022006042000', '2027504', '', '', '', '0000-00-00', '', 'Ekonomi Pembangunan (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(613, 'RAHMI HARTATI, SS., M.Ed.', '197804262002122000', '26047803', '', '', '', '0000-00-00', '', 'Bahasa Inggris (D3)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(614, 'Drs. HERMANSYAH AMIR, M.Pd.', '196209201998031000', '20096205', '', '', '', '0000-00-00', '', 'Pendidikan Kimia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(615, 'dr. MARISADONNA ASTERIA, M.Biomed.', '198301072008012000', '7018302', '', '', '', '0000-00-00', '', 'Profesi Dokter (Profesi)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(616, 'FUNNY FARADY COASTERA, S.Kom., MT.', '198205172008121000', '17058204', '', '', '', '0000-00-00', '', 'Teknik Informatika (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(617, 'MUKHLIS ISLAM, ST., MT.', '197803012008121000', '1037805', '', '', '', '0000-00-00', '', 'Teknik Sipil (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(618, 'dr. SURYO BANTOLO, S.Ked., M.Sc., S.Psi.', '198011262008121000', '26118004', '', '', '', '0000-00-00', '', 'Profesi Dokter (Profesi)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(619, 'RHENY WAHYUNI PULUNGAN, SH., LL.M.', '198006302003122000', '30068002', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S2)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(620, 'AZANSYAH, SE., M.Si.', '197808282005011000', '28087803', '', '', '', '0000-00-00', '', 'Ekonomi Pembangunan (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(621, 'dr. HILDA TAURINA, M.Sc.', '198405042009122000', '4058401', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(622, 'dr. SYLVIA RIANISSA PUTRI, M.Sc.', '198512202009122000', '20128502', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(623, 'MAKMUN REZA RAZALI, ST., MT.', '197511172009121000', '117117502', '', '', '', '0000-00-00', '', 'Arsitektur (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(624, 'dr. NOOR DIAH ERLINAWATI, M. Gizi., Sp.G.K.', '198507012009122000', '1078501', '', '', '', '0000-00-00', '', 'Profesi Dokter (Profesi)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(625, 'dr. ICHSANA PRANATAWATI', '198204112009122000', '11048204', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(626, 'dr. MARIA EKA PATRI YULIANTI', '198607182010122000', '18078601', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(627, 'dr. SRI YUNITA, M.Biomed.', '198503032010122000', '3038501', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(628, 'dr. AHMAD AZMI NASUTION, M.Biomed.', '198507062010121000', '6078501', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(629, 'dr. INTAN MARDHATILLAH', '198505272010122000', '', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(630, 'dr. HERNITA TAURUSTYA, M.Biomed.', '198505012010122000', '1058502', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(631, 'dr. LALA FORESTA VALENTINE GUNASARI, M.Biomed.', '198702242010122000', '24028702', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(632, 'Dr. BAYU INSANISTYO, S.Pd., M.Or.', '198310032008121000', '3108301', '', '', '', '0000-00-00', '', 'Teknologi Pendidikan (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(633, 'MOHAMMAD FAJRIN HIDAYAT, S.Hut. M.Si.', '197601242001121000', '24017603', '', '', '', '0000-00-00', '', 'Kehutanan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(634, 'NOVI TRI PUTRI, SE., M.Sc.', '198011152005012000', '15118002', '', '', '', '0000-00-00', '', 'Ekonomi Pembangunan (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(635, 'DEWI JUMIARNI, S.Si., M.Si.', '198101022005012000', '2018101', '', '', '', '0000-00-00', '', 'Pendidikan Biologi (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(636, 'NURLAILA ERVINA HERLIANY, S.Pi., M.Si.', '198701032012122000', '3018701', '', '', '', '0000-00-00', '', 'Ilmu Kelautan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(637, 'SEMPURNA BR GINTING, S.P., M.Si., Ph.D.', '198205232012122000', '23058204', '', '', '', '0000-00-00', '', 'Proteksi Tanaman (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(638, 'LINDA YUSANTI, SST., M.Keb', '197804092006042000', '3409047801', '', '', '', '0000-00-00', '', 'Kebidanan (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(639, 'NOVIANTI, SST., M.Keb.', '197811082005012000', '3408117802', '', '', '', '0000-00-00', '', 'Kebidanan (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(640, 'RIO KURNIAWAN, S.Pd, M.Pd', '198905222014041000', '22058901', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa dan Sastra Indonesia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(641, 'Dr. YAR JOHAN, S.Pi, M.Si', '198508232014041000', '23088503', '', '', '', '0000-00-00', '', 'Ilmu Kelautan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(642, 'AGUS SUANDI, ST. M.Eng', '197908022006041000', '2087904', '', '', '', '0000-00-00', '', 'Teknik Mesin (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(643, 'Dr. ELFI YULIZA, S.Si, M.Si', '198710262014042000', '26108702', '', '', '', '0000-00-00', '', 'Fisika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(644, 'DYAH  FITRIANI, S.Si., M.Si.', '198606142014042000', '14068601', '', '', '', '0000-00-00', '', 'Kimia (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(645, 'VIRA AFRIYATI, S.Pd, M.Pd.Kons', '198706292014042000', '1029068701', '', '', '', '0000-00-00', '', 'Bimbingan dan Konseling (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(646, 'TUTI TUTUARIMA, S.TP, M.Si', '198304112014042000', '211048302', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(647, 'ARSYADANI MISHBAHUDDIN, S.Pd.I M.Pd.I', '198703112014041000', '11038702', '', '', '', '0000-00-00', '', 'Bimbingan dan Konseling (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(648, 'SISKA YOSMAR, S.Si., M.Si.', '198202182014042000', '1018028203', '', '', '', '0000-00-00', '', 'Matematika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(649, 'ILDI KURNIAWAN, S.Pd, M.Pd', '198502082014041000', '8028502', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(650, 'dr. RIRY AMBARSARIE, S.Ked., M.Pd. Ked.', '198801152014042000', '15018801', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(651, 'DRI ASMAWANTI S, SE, M.S.Ak', '198512222014042000', '22128502', '', '', '', '0000-00-00', '', 'Akuntansi (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(652, 'RIRIN GUSTI, S.Pd.I, M.Pd.I', '198808312014042000', '1038801', '', '', '', '0000-00-00', '', 'Pendidikan Luar Sekolah (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(653, 'FACHRI EKA SAPUTRA, S.E, M.Sc', '198610192014041000', '19108601', '', '', '', '0000-00-00', '', 'Manajemen (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(654, 'IKA PASCA HIMAWATI, S.Pd, M.A', '198903202014042000', '20038901', '', '', '', '0000-00-00', '', 'Sosiologi (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(655, 'YORRY HARDAYANI, S.IP, M.Si', '198611172014042000', '217118602', '', '', '', '0000-00-00', '', 'Sekretari (D3)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(656, 'dr. MAKBRURI, M.Biomed.', '198707262014041000', '26078702', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(657, 'dr. SWANDITO WICAKSONO, M.Biomed.', '198703122014041000', '12038701', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(658, 'dr. ELVIRA ROSANA, S.Ked., M.Biomed.', '198805252014042000', '25058801', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(659, 'dr. UTARI HARTATI SURYANI, S.Ked., M. Kes.', '198702182014042000', '18028701', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(660, 'dr. DESSY TRIANA, S.Ked., M.Biomed', '198212132014042000', '13128207', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(661, 'Dr. HENNY JOHAN, S.Si., M.Pd.', '198408262008122000', '26118402', '', '', '', '0000-00-00', '', 'Pendidikan IPA (S2)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(662, 'YUDI SETIAWAN, S.T., M.Eng.', '198909032015041000', '3098902', '', '', '', '0000-00-00', '', 'Sistem Informasi (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(663, 'KURNIA  ANGGRIANI, S.T., M.T.', '198901182015042000', '18018902', '', '', '', '0000-00-00', '', 'Sistem Informasi (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(664, 'FERNANDITA  GUSWENI JAYANTI, S,Pd., M.Pd', '198908032015042000', '3088903', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(665, 'VERANI INDIARMA, S.Sos, M.A', '198610282015042000', '28108604', '', '', '', '0000-00-00', '', 'Jurnalistik (D3)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(666, 'NEZA AGUSDIANITA, S.Pd., M.Pd.', '198908192015042000', '19088901', '', '', '', '0000-00-00', '', 'Pendidikan Guru Sekolah Dasar (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(667, 'DYAH SETYO RINI, S.Si., M.Si', '198701202015042000', '20018703', '', '', '', '0000-00-00', '', 'Statistika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(668, 'DARA HIMALAYA, SST., M.Keb.', '197208292006042000', '3429087201', '', '', '', '0000-00-00', '', 'Kebidanan (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(669, 'EKO NOFRIDIANSYAH, S.Pi., M.Si.', '198805202015041000', '20058803', '', '', '', '0000-00-00', '', 'Ilmu Kelautan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(670, 'dr. MARDHATILLAH MARSA', '198703062015042000', '', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(671, 'FRANSISKA TIMORIA SAMOSIR, S.Sos., M.A.', '198806012015042000', '1068802', '', '', '', '0000-00-00', '', 'Ilmu Perpustakaan (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(672, 'INTAN ZORAYA, S.E., M.M.', '198611022015042000', '2118607', '', '', '', '0000-00-00', '', 'Manajemen (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(673, 'PERSON PESONA RENTA, S.Kel., M.Si.', '198710152015041000', '15108703', '', '', '', '0000-00-00', '', 'Ilmu Kelautan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(674, 'dr. SARI ALMIRA TARIA', '198909062015042000', '6098901', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(675, 'dr. IKE SULISTIYOWATI, M.Biomed.', '198605152015042000', '15058603', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(676, 'MEISELINA IRMAYANTI, S.Ikom., M.Si.', '199005042015042000', '4059001', '', '', '', '0000-00-00', '', 'Jurnalistik (D3)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(677, 'Dr. SIPRIYADI, S.Si. M.Si.', '198409222008121000', '22098401', '', '', '', '0000-00-00', '', 'Biologi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(678, 'BERTO USMAN, S.E., M.Sc., Ph.D', '198910152015041000', '15108901', '', '', '', '0000-00-00', '', 'Manajemen (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(679, 'SUCI RAHMAWATI, S.Farm., Apt, M. Farm.', '199004172014022000', '17049003', '', '', '', '0000-00-00', '', 'Farmasi (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(680, 'HENDY SANTOSA, ST., MT., Ph.D.', '198112102008121000', '10128101', '', '', '', '0000-00-00', '', 'Teknik Elektro (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(681, 'LUSIANA, S.Si., M.Si.', '198101252005012000', '25018106', '', '', '', '0000-00-00', '', 'Kimia (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(682, 'VIKA FITRANITA, S.E., M.Ak.', '199102262018032000', '26029103', '', '', '', '0000-00-00', '', 'Akuntansi (D3)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(683, 'FERZHA PUTRA UTAMA, S.T., M.Eng.', '198906232018031000', '23068905', '', '', '', '0000-00-00', '', 'Sistem Informasi (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(684, 'PANJI ANOM RAMAWANGSA, S.T., M.Ars.', '198909112018031000', '11098905', '', '', '', '0000-00-00', '', 'Arsitektur (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(685, 'DEBBY SEFTYARIZKI, S.T., M.T.', '199009282018032000', '228099001', '', '', '', '0000-00-00', '', 'Arsitektur (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(686, 'BERTOKA FAJAR SURYA P.N, S.Kel., M.Si.', '199010092018031000', '9109004', '', '', '', '0000-00-00', '', 'Ilmu Kelautan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(687, 'OKTOVIANI, S.Farm., Apt., M.Farm.', '198910112018032000', '11108901', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(688, 'EKA VUSPA SARI, S.Ikom., M.A.', '198903212018032000', '221038901', '', '', '', '0000-00-00', '', 'Ilmu Komunikasi (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(689, 'AZHAR AZIZ LUBIS, S.Pd., M.Pd.', '198803292018031000', '29038804', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(690, 'TRI ANDIKA, S.H., M.H.', '199007062018031000', '6079002', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(691, 'LAILATUS SA\'DIYAH, S.IP., M.IP.', '199208012018032000', '1089202', '', '', '', '0000-00-00', '', 'Ilmu Perpustakaan (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(692, 'YULIATI, S.Sos., M.I.Kom.', '198007292006042000', '29078004', '', '', '', '0000-00-00', '', 'Ilmu Komunikasi (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(693, 'KURNIA DEWIANI, SST., M.Keb.', '198801162010012000', '16018802', '', '', '', '0000-00-00', '', 'Kebidanan (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(694, 'REZA PERTIWI, S.Farm., Apt., M. Farm.', '199310132019032000', '13109301', '', '', '', '0000-00-00', '', 'Farmasi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(695, 'MADANI HATTA, SE. M.Si.Akt.', '198208202006041000', '20088201', '', '', '', '0000-00-00', '', 'Akuntansi (D3)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(696, 'FITRI ELECTRIKA DEWI SURAWAN, S.T.P., M.Sc.', '197709162006042000', '16097706', '', '', '', '0000-00-00', '', 'Teknologi Industri Pertanian (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(697, 'AHMAD WALI, SH., MH.', '197511152005011000', '15117505', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(698, 'DENI MARYANI, S.ST, M.Keb.', '198112042006042000', '3404128102', '', '', '', '0000-00-00', '', 'Kebidanan (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(699, 'AHMAD SALEH HARAHAP, S.Pt., M.Si.', '198512142019031000', '114128501', '', '', '', '0000-00-00', '', 'Peternakan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(700, 'ALI MUQSIT, S.Kel., M.Si.', '199206102019031000', '10069203', '', '', '', '0000-00-00', '', 'Ilmu Kelautan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(701, 'NURBAITI, S.T., M.T.', '198401312019032000', '31018407', '', '', '', '0000-00-00', '', 'Teknik Mesin (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(702, 'ARIE ELCAPUTERA, S.H., M.H.', '198804092019031000', '209048802', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(703, 'STEVRI ISKANDAR, S.H., M.H.', '198709292019031000', '29098706', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(704, 'WURI PRAMESWARI, S.P., M.Si.', '198712312019032000', '31128703', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(705, 'UMI SALAMAH, S.P., M.Si.', '199004282019032000', '24049004', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(706, 'NELA ZAHARA, S.P., M.Si.', '198906302019032000', '30068904', '', '', '', '0000-00-00', '', 'Proteksi Tanaman (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(707, 'ARI WIRYA DINATA, S.H., M.H.', '199108232019031000', '23089105', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(708, 'ROSI L. VINI SIREGAR, S.Sos., M.Kesos', '199102192019032000', '19029103', '', '', '', '0000-00-00', '', 'Ilmu Kesejahteraan Sosial (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(709, 'PUTRA BISMANTOLO, S.T., M.T.', '198604182019031000', '18048602', '', '', '', '0000-00-00', '', 'Teknik Mesin (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(710, 'NURHANI FITHRIAH, S.H., M.H.', '199204092019032000', '9049204', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(711, 'ESTI PASARIBU, S.E., M.Ec.Dev.', '198701302019032000', '30018701', '', '', '', '0000-00-00', '', 'Ekonomi Pembangunan (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(712, 'WELLY HERMAN, S.P., M.P.', '198809302019032000', '1030098801', '', '', '', '0000-00-00', '', 'Ilmu Tanah (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(713, 'NIKKI ALDI MASSARDI, S.Si., M.Biomed.', '198903262019031000', '326038903', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(714, 'GERRY SURYOSUKMONO, S.E., M.S.M.', '199110122019031000', '312109101', '', '', '', '0000-00-00', '', 'Manajemen (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(715, 'AFRIMA WIDANTI, S.E., M.Sc.', '199104142019032000', '14049107', '', '', '', '0000-00-00', '', 'Manajemen (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(716, 'RAHMI YURISTIA, S.P. M.Si.', '198410312019032000', '1031108402', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(717, 'NOLA WINDIRAH, S.P., M.Si.', '199103232019032000', '23039107', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(718, 'ELLEN MAIDIA DJATMIKO, S.Si., M.Biomed.', '198712052019032000', '5128703', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(719, 'M. YASSER IQBAL DAULAY, S.E., MBA.', '199106242019031000', '24069105', '', '', '', '0000-00-00', '', 'Manajemen (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(720, 'DIAH AYU AGUSPA DITA, S.Kep., Ns., M. Biomed.', '199208062019032000', '6089201', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(721, 'HELFI EKA SAPUTRA, S.P., M.Si', '198908252019031000', '25088903', '', '', '', '0000-00-00', '', 'Agroekoteknologi (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(722, 'HERLIN FRANSISKA, S.Si., M.Si.', '199009172019032000', '17099001', '', '', '', '0000-00-00', '', 'Statistika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(723, 'RINGKI  AGUSTINSA, S.Pd, M.Pd', '198708012019031000', '1088703', '', '', '', '0000-00-00', '', 'Pendidikan Matematika (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(724, 'DENI AGUS TRIAWAN, S.Si., M.Sc.', '198908172019031000', '17088902', '', '', '', '0000-00-00', '', 'Farmasi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(725, 'FINA HIASA, S.Pd., M.A.', '199007062019032000', '6079001', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa dan Sastra Indonesia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(726, 'SEPTRIANI, S.E., M. Ec. Dev.', '198909202019032000', '20098903', '', '', '', '0000-00-00', '', 'Ekonomi Pembangunan (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(727, 'ARINI AZKA MUTHIA, S.H., M.H.', '198908082019032000', '8088903', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(728, 'YAHYA EKO NOPIYANTO, S.Pd., M.Pd.', '199211292019031000', '29119201', '', '', '', '0000-00-00', '', 'Pendidikan Jasmani dan Kesehatan (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(729, 'ANANDYAWATI, S.P., M.Si.', '198809202019032000', '20098806', '', '', '', '0000-00-00', '', 'Ilmu Tanah (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(730, 'CITRA DWI PALENTI, S.Pd., M.Pd.', '199305182019032000', '18059301', '', '', '', '0000-00-00', '', 'Pendidikan Luar Sekolah (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(731, 'ASEP SUHERMAN, S.H., M.H.', '198809132019031000', '13098806', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(732, 'PUTRA PERDANA AHMAD SAIFULLOH, S.H., M.H.', '198901122019031000', '312018901', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(733, 'AMIR HUSAINI KARIM AMRULLAH, S.Pt., M.Sc.', '198801312019031000', '31018804', '', '', '', '0000-00-00', '', 'Peternakan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(734, 'ZAHRATUL QALBI, S.Pd., M.Pd.', '199303162019032000', '16039303', '', '', '', '0000-00-00', '', 'Pendidikan Guru PAUD (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(735, 'SITI HATIKASARI, S.H., M.H.', '199112092019032000', '9129105', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(736, 'APRIZA HONGKO PUTRA, S.Si., M.Si.', '199004222019031000', '1022049003', '', '', '', '0000-00-00', '', 'Laboratorium Sains (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(737, 'BAYU PRADIKTO, S.Pd., M.Pd.', '199107192019031000', '19079103', '', '', '', '0000-00-00', '', 'Pendidikan Luar Sekolah (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(738, 'PIPI SUSANTI, S.H., M.H.', '198810062019032000', '6108806', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(739, 'SONIA IVANA BARUS, S.H., M.H.', '199501242019032000', '24019501', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(740, 'BENGET HASUDUNGAN SIMATUPANG, S.H., M.H.Li', '198804162019031000', '16048803', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(741, 'ANNISA FITRIA EDRIANI, S.T., M.EngSt', '199204022019032000', '2049201', '', '', '', '0000-00-00', '', 'Teknik Sipil (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(742, 'ANNA AYU HERAWATI, S.Pd., M.Pd.', '199203082019032000', '8039202', '', '', '', '0000-00-00', '', 'Bimbingan dan Konseling (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(743, 'ABDUL HAMID HAKIM, S.T, M.Sc', '198709242019031000', '24098705', '', '', '', '0000-00-00', '', 'Arsitektur (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(744, 'ALIF YANUAR ZUKMADINI,S.Pd, M.Pd', '199101282019032000', '28019101', '', '', '', '0000-00-00', '', 'Pendidikan Biologi (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(745, 'LIYA AGUSTIN UMAR, S.Si., M. Biomed', '199008012019032000', '1089003', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(746, 'HERIANSYAH, S.Pd., M.Sc.', '199004212019031000', '2021049001', '', '', '', '0000-00-00', '', 'Laboratorium Sains (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(747, 'FEBRIAN SOLIKHIN, S.Pd., M.Pd.', '199302282019031000', '28029301', '', '', '', '0000-00-00', '', 'Pendidikan Kimia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(748, 'FADES Br. GULTOM, S.Pd., M.Sc.', '199212132019032000', '13129201', '', '', '', '0000-00-00', '', 'Laboratorium Sains (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(749, 'NADIA AMIDA, S.Pd., M.Pd.', '199010282019032000', '28109007', '', '', '', '0000-00-00', '', 'Pendidikan Kimia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(750, 'ANDANG WIJANARKO, S.Kom., M.Kom.', '199201312019031000', '31019201', '', '', '', '0000-00-00', '', 'Teknik Informatika (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(751, 'DWI OKTAVALLYAN SAPUTRI, S.T., M.Sc.', '199110212019032000', '21109101', '', '', '', '0000-00-00', '', 'Arsitektur (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(752, 'ATIK PRIHATININGRUM, ST., M.Sc.', '199107092019032000', '9079102', '', '', '', '0000-00-00', '', 'Arsitektur (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(753, 'ADHADI KURNIAWAN, S.T., M.Eng.', '198811272019031000', '201118802', '', '', '', '0000-00-00', '', 'Teknik Elektro (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(754, 'RAHMAT NURSALIM, S.Pd., M.Si.', '198505162019031000', '2016058503', '', '', '', '0000-00-00', '', 'Matematika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(755, 'TEDDY ALFRA SIAGIAN, S.Pd., M.Pd.', '199009162019031000', '16099003', '', '', '', '0000-00-00', '', 'Pendidikan Matematika (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(756, 'MARDHATILLAH SARIYANTI, S.Si., M. Biomed.', '198806042019032000', '204068801', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(757, 'REFPO RAHMAN, S.Pd., M.Si.', '199301072019031000', '7019301', '', '', '', '0000-00-00', '', 'Laboratorium Sains (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(758, 'YAGIE SAGITA PUTRA, S.H., M.H.', '199108262019031000', '26089101', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(759, 'DIMAS DWI ARSO, S.H., M.H.', '199105252019031000', '25059101', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(760, 'SEPTRI DAMAYANTI, S.Si., M.Si.', '198609162019032000', '216098601', '', '', '', '0000-00-00', '', 'Matematika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(761, 'DEBIE RIZQOH, S.Si., M.Biomed.', '198905192019032000', '119058901', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(762, 'DIONNI DITYA PERDANA, S.Ikom., M.Ikom.', '199111072019032000', '7119102', '', '', '', '0000-00-00', '', 'Ilmu Komunikasi (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(763, 'NURUL HIDAYATI, S.Si., M.Si.', '198603212019032000', '2021038602', '', '', '', '0000-00-00', '', 'Statistika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(764, 'DIYAS WIDIYARTI, S.Sos., M. A.', '199106122019032000', '12069104', '', '', '', '0000-00-00', '', 'Sosiologi (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(765, 'ELVIRA YUNITA, S.Si., M.Biomed.', '199106042019032000', '4069105', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(766, 'ARI ANGGORO, S.Pi., M.Si.', '198901312019031000', '31018902', '', '', '', '0000-00-00', '', 'Ilmu Kelautan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(767, 'dr. RIZKIANTI ANGGRAINI', '198905052019032000', '', '', '', '', '0000-00-00', '', 'Kedokteran (S1)', 'Fakultas KIK', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(768, 'RIDHA RIZKI NOVANDA, SE., M.Si.', '199211272019032000', '27119202', '', '', '', '0000-00-00', '', 'Agribisnis (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(769, 'ILSYA HAYADI, SE., MBA.', '198403072019031000', '7038405', '', '', '', '0000-00-00', '', 'Manajemen (S1)', 'Fakultas Ekonomi dan Bisnis ', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(770, 'WINALIA AGWIL, S.Si., M.Si.', '199006262019032000', '26069006', '', '', '', '0000-00-00', '', 'Statistika (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(771, 'BENI KURNIA ILLAHI, S.H., M.H.', '199310162019031000', '16109303', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL);
INSERT INTO `user` (`id_user`, `nama_user`, `nip_user`, `nidn_user`, `email_user`, `no_hp_user`, `alamat_user`, `tgl_lahir_user`, `jenis_kelamin_user`, `prodi_user`, `fakultas_user`, `hak_akses`, `foto_profil`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(772, 'AGUNG GIRI SAMUDRA, S.Farm., Apt., M.Sc.', '198905082019031000', '208058901', '', '', '', '0000-00-00', '', 'Farmasi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(773, 'SUFIYANDI, S.Pd., M.Pd.', '198407182019031000', '1018078401', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (D3)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(774, 'SEPTIAN RAIBOWO, S.Pd., M.Pd.', '199309132019031000', '13099301', '', '', '', '0000-00-00', '', 'Pendidikan Jasmani dan Kesehatan (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(775, 'GUSTRIA ERNIS, S.Pd., M.Si.', '199008292019032000', '29089005', '', '', '', '0000-00-00', '', 'Laboratorium Sains (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(776, 'WULANDARI, S.H., M.H.', '199001252019032000', '25019004', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(777, 'NADY FEBRI ARIFFIANDO, S.Pd., M.Pd.', '199304062019031000', '6049302', '', '', '', '0000-00-00', '', 'Pendidikan Guru Sekolah Dasar (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(778, 'DWI DOMINICA, S.Farm., Apt., M. Farm.', '198901292019032000', '29018905', '', '', '', '0000-00-00', '', 'Farmasi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(779, 'AHMAD SYARKOWI, S.Pd., M.Pd.', '198909222019031000', '22098901', '', '', '', '0000-00-00', '', 'Pendidikan Fisika (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(780, 'WISMAN, S.Pd., M.Pd.', '199003252019031000', '1025039001', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa dan Sastra Indonesia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(781, 'DELIA KOMALA SARI, S.Farm., Apt., M. Farm.', '199107292019032000', '29079102', '', '', '', '0000-00-00', '', 'Farmasi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(782, 'EMILIA CANDRAWATI, S.Pd., M.Pd.', '198310072019032000', '7108307', '', '', '', '0000-00-00', '', 'Pendidikan IPA (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(783, 'ZICO JUNIUS FERNANDO, S.H., M.H.', '199006072019031000', '7069004', '', '', '', '0000-00-00', '', 'Ilmu Hukum (S1)', 'Fakultas Hukum', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(784, 'Dr. RISKY HADI WIBOWO, S.Si.,M.Si.', '198504242019031000', '24048501', '', '', '', '0000-00-00', '', 'Biologi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(785, 'NURFIJRIN RAMADHANI, S. Farm., Apt., M.Sc.', '199004132019032000', '213049001', '', '', '', '0000-00-00', '', 'Farmasi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(786, 'DIAN FITA LESTARI, S.Pd., M.Sc.', '199003272019032000', '27039002', '', '', '', '0000-00-00', '', 'Biologi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(787, 'MELLYTA ULIYANDARI, S.Pd., M.Pd.Si', '199208192019032000', '19089203', '', '', '', '0000-00-00', '', 'Pendidikan IPA (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(788, 'MELIA EKA DARYATI, S.Pd., M.Pd.', '199010152019032000', '15109004', '', '', '', '0000-00-00', '', 'Pendidikan Guru PAUD (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(789, 'FATIMATUZZAHRA, S.Pd., M.Sc.', '198908232019032000', '2023088903', '', '', '', '0000-00-00', '', 'Biologi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(790, 'JULIA PURNAMA SARI, S.T., M.Kom.', '199007092019032000', '9079004', '', '', '', '0000-00-00', '', 'Sistem Informasi (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(791, 'DONI NOTRIAWAN, S.Si., M.Si.', '198911022019031000', '2118906', '', '', '', '0000-00-00', '', 'Laboratorium Sains (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(792, 'MUHAMMAD ADENG FADILA, S.Si., M.Si.', '199104012019031000', '1049104', '', '', '', '0000-00-00', '', 'Laboratorium Sains (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(793, 'YANOLANDA SUZANTRY HANDAYANI, S.T., M.Eng.', '198701212019032000', '21018705', '', '', '', '0000-00-00', '', 'Teknik Elektro (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(794, 'IRFAN SUPRIATNA, S.Pd., M.Pd.', '198806152019031000', '415068802', '', '', '', '0000-00-00', '', 'Pendidikan Guru Sekolah Dasar (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(795, 'MUHAMMAD FADHLI, S.Pd., M.Pd.', '198901212019031000', '2021018901', '', '', '', '0000-00-00', '', 'Pendidikan Bahasa Inggris (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(796, 'PANUT SETIONO, S.Pd., M.Pd.', '198902272019031000', '27028905', '', '', '', '0000-00-00', '', 'Pendidikan Guru Sekolah Dasar (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(797, 'NENI MURNIATI, S.Pd., M.Pd', '198711172019032000', '217118701', '', '', '', '0000-00-00', '', 'Pendidikan Biologi (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(798, 'JATMIKO YOGOPRIYATNO, S.IP., M.Si.', '198903172019031000', '17038903', '', '', '', '0000-00-00', '', 'Ilmu Administrasi Negara (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(799, 'MOCHAMMAD YUSA, S.Kom., M.Kom.', '199201042019031000', '504019201', 'yusa@unib.ac.id', '0821837171971', 'Bengkulu', '1992-01-04', 'L', 'Teknik Informatika (S1)', 'Fakultas Teknik', 'dosen', '', '$2y$10$hPvMojLniaZ8SlXTtNZc/.YVTht.wnf13yKABRkVl/VjUFDJ79bGS', 'aktif', '4olxz2nHVKVzOOZhFI1vgiOFSvgo76fS4RP11VGmw1sGYBaxFaSU2n375gBM', NULL, '2021-06-29 04:39:00', NULL),
(800, 'VIMTAKUL AZIZ, ST.', '197411031999031000', '3117403', '', '', '', '0000-00-00', '', 'Teknik Elektro (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(801, 'Dr. RINA ELVIA, S.Si., M.Si.', '197505122000032000', '12057501', '', '', '', '0000-00-00', '', 'Pendidikan Kimia (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(802, 'CHAIRIL AFANDY, SE., MM.', '197903052002121000', '5037906', '', '', '', '0000-00-00', '', 'Manajemen (S1)', 'Fakultas Ekonomi dan Bisnis', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(803, 'INDRA AGUSTIAN, ST., M.Eng.', '197908132005011000', '13087902', '', '', '', '0000-00-00', '', 'Teknik Elektro (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(804, 'MUKTI DONO WILOPO, S.Pi., M.Si.', '198307252006041000', '25078301', '', '', '', '0000-00-00', '', 'Ilmu Kelautan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(805, 'DIAN MUSLIMAH, S.Sos., MA.', '198202272006042000', '27028201', '', '', '', '0000-00-00', '', 'Ilmu Perpustakaan (S1)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(806, 'DEDI SATRIAWAN, S.Si., M.Si.', '198412062008011000', '6128401', '', '', '', '0000-00-00', '', 'Biologi (S1)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(807, 'PEBRIAN TARMIZI, S.Pd., M.Pd.', '198102222008121000', '22028104', '', '', '', '0000-00-00', '', 'Pendidikan Guru Sekolah Dasar (S1)', 'Fakultas KIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(808, 'MAYA ANGGRAINI FAJAR UTAMI, S.Pi., M.Si.', '198502222008122000', '22028501', '', '', '', '0000-00-00', '', 'Ilmu Kelautan (S1)', 'Fakultas Pertanian', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(809, 'NURSANTY, S.IP.,M.Si.', '198304202008122000', '20048304', '', '', '', '0000-00-00', '', 'Sekretari (D3)', 'Fakultas ISIP', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(810, 'RUVITA FAURINA, ST., M.Eng', '198411292008122000', '29118401', '', '', '', '0000-00-00', '', 'Teknik Informatika (S1)', 'Fakultas Teknik', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(811, 'ASMARIYAH, S.ST., M.Keb.', '197709292008012000', '29097706', '', '', '', '0000-00-00', '', 'Kebidanan (D3)', 'Fakultas MIPA', 'dosen', '', '', 'nonaktif', 'gK1WpIdY02RBv8pjCQmxGIvpJmWilhu7PzN8bCDJeG6fIE6Tk03LB9zmBF4P	', NULL, NULL, NULL),
(812, 'nama_user', 'nip_user', 'nidn_user', 'email_user', 'no_hp_user', 'alamat_user', '0000-00-00', '', 'prodi_user', 'fakultas_user', '', 'foto_profil', 'password', '', 'remember_token', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(813, 'Super Admin', 'super admin', 'super admin', 'superadmin@gmail.com', 'super admin', 'super admin', '2021-06-28', 'L', 'super admin', 'super admin', 'admin', 'avatar-1.png-1624945874.png', '$2y$10$zqLwn9UYeAnVVK6y/sbOS.caQ14k3xhZBG5x/SUDod/qOvAewJOR2', 'aktif', 'PFfth7FVDRVNUhU2BzaEwSpTSTWNjLJMEGXe4jsoG95F3cMVILlbshsZSOpT', NULL, '2021-06-29 05:51:14', NULL),
(818, 'nama_user', 'nip_user', 'nidn_user', 'email_user', 'no_hp_user', 'alamat_user', '0000-00-00', '', 'prodi_user', 'fakultas_user', '', 'foto_profil', 'password', '', 'remember_token', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(819, 'Staff', 'staff', 'staff', 'staff@gmail.com', 'staff', 'staff', '2021-06-28', 'L', 'staff', 'staff', 'staff', NULL, '$2y$10$l9Zu6KF7GkhtyBp3SPH.jOGnf27gVngXmcZ4oS3JRSgzT38Rz2aR6', 'aktif', NULL, '2021-06-29 00:45:38', '2021-06-29 01:34:16', NULL),
(820, 'nama_user', 'nip_user', 'nidn_user', 'email_user', 'no_hp_user', 'alamat_user', '0000-00-00', '', 'prodi_user', 'fakultas_user', '', 'foto_profil', 'password', '', 'remember_token', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(821, 'nama_user', 'nip_user', 'nidn_user', 'email_user', 'no_hp_user', 'alamat_user', '0000-00-00', '', 'prodi_user', 'fakultas_user', '', 'foto_profil', 'password', '', 'remember_token', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggotapenelitian`
--
ALTER TABLE `anggotapenelitian`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `anggotapengabdian`
--
ALTER TABLE `anggotapengabdian`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `penandatangan`
--
ALTER TABLE `penandatangan`
  ADD PRIMARY KEY (`id_penandatangan`);

--
-- Indeks untuk tabel `penelitian`
--
ALTER TABLE `penelitian`
  ADD PRIMARY KEY (`id_penelitian`);

--
-- Indeks untuk tabel `penelitiananggota`
--
ALTER TABLE `penelitiananggota`
  ADD PRIMARY KEY (`id_penelitiananggota`);

--
-- Indeks untuk tabel `pengabdian`
--
ALTER TABLE `pengabdian`
  ADD PRIMARY KEY (`id_pengabdian`);

--
-- Indeks untuk tabel `pengabdiananggota`
--
ALTER TABLE `pengabdiananggota`
  ADD PRIMARY KEY (`id_pengabdiananggota`);

--
-- Indeks untuk tabel `suratpenelitian`
--
ALTER TABLE `suratpenelitian`
  ADD PRIMARY KEY (`id_srtpenelitian`);

--
-- Indeks untuk tabel `suratpengabdian`
--
ALTER TABLE `suratpengabdian`
  ADD PRIMARY KEY (`id_srtpengabdian`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggotapenelitian`
--
ALTER TABLE `anggotapenelitian`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `anggotapengabdian`
--
ALTER TABLE `anggotapengabdian`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `penandatangan`
--
ALTER TABLE `penandatangan`
  MODIFY `id_penandatangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `penelitian`
--
ALTER TABLE `penelitian`
  MODIFY `id_penelitian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=508;

--
-- AUTO_INCREMENT untuk tabel `penelitiananggota`
--
ALTER TABLE `penelitiananggota`
  MODIFY `id_penelitiananggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pengabdian`
--
ALTER TABLE `pengabdian`
  MODIFY `id_pengabdian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=551;

--
-- AUTO_INCREMENT untuk tabel `pengabdiananggota`
--
ALTER TABLE `pengabdiananggota`
  MODIFY `id_pengabdiananggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `suratpenelitian`
--
ALTER TABLE `suratpenelitian`
  MODIFY `id_srtpenelitian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `suratpengabdian`
--
ALTER TABLE `suratpengabdian`
  MODIFY `id_srtpengabdian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=822;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
