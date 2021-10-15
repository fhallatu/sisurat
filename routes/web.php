<?php

use GuzzleHttp\Middleware;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\suratpenelitiancontroller;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::get('/sipesan/register', 'App\Http\Controllers\authcontroller@register');
Route::put('/sipesan/register/update', 'App\Http\Controllers\authcontroller@registerupdate');
Route::get('/logout', 'App\Http\Controllers\authcontroller@logout');
Route::get('/sipesan/login', 'App\Http\Controllers\authcontroller@login');
Route::post('/postlogin', 'App\Http\Controllers\authcontroller@postlogin');

Route::middleware(['auth', 'checkRole:admin'])->group(function () {
    Route::get('/sipesan/user', 'App\Http\Controllers\usercontroller@index');
    Route::get('/sipesan/user/create', 'App\Http\Controllers\usercontroller@create');
    Route::post('/sipesan/user', 'App\Http\Controllers\usercontroller@store');
    Route::get('/sipesan/user/{id_user}/edit', 'App\Http\Controllers\usercontroller@edit');
    Route::put('/sipesan/user/{id_user}', 'App\Http\Controllers\usercontroller@update');
    Route::get('/sipesan/user/delete/{userId}', 'App\Http\Controllers\usercontroller@destroy');
    Route::get('/sipesan/user/{id_user}/detail', 'App\Http\Controllers\usercontroller@detail');
    Route::get('/sipesan/user/pending', 'App\Http\Controllers\usercontroller@statuspending');
    Route::get('/sipesan/user/nonaktif', 'App\Http\Controllers\usercontroller@statusnonaktif');
    Route::get('/sipesan/user/aktif', 'App\Http\Controllers\usercontroller@statusaktif');
    Route::get('/sipesan/user/updatestatus/{id_user}', 'App\Http\Controllers\usercontroller@updatestatus');
});

Route::middleware(['auth', 'checkRole:admin,staff'])->group(function () {
    Route::get('/sipesan/penelitian', 'App\Http\Controllers\penelitiancontroller@index');
    Route::get('/sipesan/penelitian/create', 'App\Http\Controllers\penelitiancontroller@create');
    Route::post('/sipesan/penelitian', 'App\Http\Controllers\penelitiancontroller@store');
    Route::get('/sipesan/penelitian/{id_penelitian}/edit', 'App\Http\Controllers\penelitiancontroller@edit');
    Route::put('/sipesan/penelitian/{id_penelitian}', 'App\Http\Controllers\penelitiancontroller@update');
    Route::get('/sipesan/penelitian/delete/{penelitianId}', 'App\Http\Controllers\penelitiancontroller@destroy');
    Route::get('/sipesan/penelitian/{id_penelitian}/detail', 'App\Http\Controllers\penelitiancontroller@detail');
    Route::get('/sipesan/anggotapenelitian/create', 'App\Http\Controllers\anggotapenelitiancontroller@index');
    Route::view('anggotapenelitian','livewire.anggotapenelitian');
});

Route::middleware(['auth', 'checkRole:admin,staff'])->group(function () {
    Route::get('/sipesan/pengabdian', 'App\Http\Controllers\pengabdiancontroller@index');
    Route::get('/sipesan/pengabdian/create', 'App\Http\Controllers\pengabdiancontroller@create');
    Route::post('/sipesan/pengabdian', 'App\Http\Controllers\pengabdiancontroller@store');
    Route::get('/sipesan/pengabdian/{id_pengabdian}/edit', 'App\Http\Controllers\pengabdiancontroller@edit');
    Route::put('/sipesan/pengabdian/{id_pengabdian}', 'App\Http\Controllers\pengabdiancontroller@update');
    Route::get('/sipesan/pengabdian/delete/{pengabdianId}', 'App\Http\Controllers\pengabdiancontroller@destroy');
    Route::get('/sipesan/pengabdian/{id_pngabdian}/detail', 'App\Http\Controllers\pengabdiancontroller@detail');
    Route::get('/sipesan/anggotapengabdian/create', 'App\Http\Controllers\anggotapengabdiancontroller@index');
    Route::view('anggotapengabdian','livewire.anggotapengabdian');
});

Route::middleware(['auth', 'checkRole:admin,staff,dosen'])->group(function () {
    Route::get('/sipesan/dashboard', 'App\Http\Controllers\dashboardcontroller@index');

    Route::get('/sipesan/penandatangan/create', 'App\Http\Controllers\penandatangancontroller@create');
    Route::post('/sipesan/penandatangan', 'App\Http\Controllers\penandatangancontroller@store');

    Route::get('/sipesan/profile', 'App\Http\Controllers\usercontroller@profile');
    Route::put('/sipesan/profile', 'App\Http\Controllers\usercontroller@updateprofile');

    Route::get('/sipesan/surat/penelitian', 'App\Http\Controllers\suratpenelitiancontroller@index');
    Route::get('/sipesan/surat/penelitian/create', 'App\Http\Controllers\suratpenelitiancontroller@create');
    Route::get('/sipesan/surat/penelitian/{id_srtpenelitian}/edit', 'App\Http\Controllers\suratpenelitiancontroller@edit');
    Route::put('/sipesan/surat/penelitian/{id_srtpenelitian}', 'App\Http\Controllers\suratpenelitiancontroller@update');
    Route::get('/sipesan/surat/penelitian/delete/{srtpenelitianId}', 'App\Http\Controllers\suratpenelitiancontroller@destroy');
    Route::get('/sipesan/surat/penelitian/updatestatus/{id_srtpenelitian}', 'App\Http\Controllers\suratpenelitiancontroller@updatestatus');
    Route::get('/sipesan/surat/penelitian/{id_srtpenelitian}/cetak', 'App\Http\Controllers\suratpenelitiancontroller@cetaksurat');
    Route::get('/sipesan/surat/penelitian/{id_srtpenelitian}/detail', 'App\Http\Controllers\suratpenelitiancontroller@detail');
    Route::get('/sipesan/surat/penelitian/antrean', 'App\Http\Controllers\suratpenelitiancontroller@suratantrean');
    Route::get('/sipesan/surat/penelitian/proses', 'App\Http\Controllers\suratpenelitiancontroller@suratproses');
    Route::get('/sipesan/surat/penelitian/selesai', 'App\Http\Controllers\suratpenelitiancontroller@suratselesai');
    Route::get('/sipesan/surat/penelitian/unduh', 'suratpenelitiancontroller@downloadsurat');
    Route::get('/sipesan/surat/penelitian/{id_srtpenelitian}/pilih/penandatangan', 'App\Http\Controllers\suratpenelitiancontroller@editpenandatangan');
    Route::put('/sipesan/surat/penelitian/penandatangan/{id_srtpenelitian}', 'App\Http\Controllers\suratpenelitiancontroller@updatepenandatangan');
    
    Route::get('/sipesan/surat/pengabdian', 'App\Http\Controllers\suratpengabdiancontroller@index');
    Route::get('/sipesan/surat/pengabdian/create', 'App\Http\Controllers\suratpengabdiancontroller@create');
    Route::get('/sipesan/surat/pengabdian/uploadfile/{id_srtpengabdian}/upload', 'App\Http\Controllers\suratpengabdiancontroller@uploadfile');
    Route::put('/sipesan/surat/pengabdian/uploadfile/{id_srtpengabdian}', 'App\Http\Controllers\suratpengabdiancontroller@storefile');
    Route::get('/sipesan/surat/pengabdian/{id_srtpengabdian}/edit', 'App\Http\Controllers\suratpengabdiancontroller@edit');
    Route::put('/sipesan/surat/pengabdian/{id_srtpengabdian}', 'App\Http\Controllers\suratpengabdiancontroller@update');
    Route::get('/sipesan/surat/pengabdian/{id_srtpengabdian}/cetak', 'App\Http\Controllers\suratpengabdiancontroller@cetaksurat');
    Route::get('/sipesan/surat/pengabdian/delete/{srtpengabdianId}', 'App\Http\Controllers\suratpengabdiancontroller@destroy');
    Route::get('/sipesan/surat/pengabdiann/{id_srtpengabdian}/detail', 'App\Http\Controllers\suratpengabdiancontroller@detail');
    Route::get('/sipesan/surat/pengabdian/updatestatus/{id_srtpengabdian}', 'App\Http\Controllers\suratpengabdiancontroller@updatestatus');
    Route::get('/sipesan/surat/pengabdian/unduh', 'suratpenelitiancontroller@downloadsurat');
    Route::get('/sipesan/surat/pengabdian/unduh/filepermohonan', 'suratpenelitiancontroller@downloadfilepermohonan');
    Route::get('/sipesan/surat/pengabdian/unduh/filemitra', 'suratpenelitiancontroller@downloadfilemitra');
    Route::get('/sipesan/surat/pengabdian/unduh/fileproposal', 'suratpenelitiancontroller@downloadfileproposal');
    Route::get('/sipesan/surat/pengabdian/unduh/filelaporan', 'suratpenelitiancontroller@downloadfilelaporan');
    Route::get('/sipesan/surat/pengabdian/unduh/filejurnal', 'suratpenelitiancontroller@downloadfilejurnal');
    Route::get('/sipesan/surat/pengabdian/unduh/filebooklet', 'suratpenelitiancontroller@downloadfilebooklet');
    Route::get('/sipesan/surat/pengabdian/unduh/fileabsensi', 'suratpenelitiancontroller@downloadfileabsensi');
    Route::get('/sipesan/surat/pengabdian/unduh/fotokegiatan', 'suratpenelitiancontroller@downloadfotokegiatan');
    Route::get('/sipesan/surat/pengabdian/upload', 'App\Http\Controllers\suratpengabdiancontroller@suratuploadfile');
    Route::get('/sipesan/surat/pengabdian/antrean', 'App\Http\Controllers\suratpengabdiancontroller@suratantrean');
    Route::get('/sipesan/surat/pengabdian/proses', 'App\Http\Controllers\suratpengabdiancontroller@suratproses');
    Route::get('/sipesan/surat/pengabdian/selesai', 'App\Http\Controllers\suratpengabdiancontroller@suratselesai');
    Route::get('/sipesan/surat/pengabdian/{id_srtpengabdian}/pilih/penandatangan', 'App\Http\Controllers\suratpengabdiancontroller@editpenandatangan');
    Route::put('/sipesan/surat/pengabdian/penandatangan/{id_srtpengabdian}', 'App\Http\Controllers\suratpengabdiancontroller@updatepenandatangan');

    Route::get('/sipesan/changepassword', 'App\Http\Controllers\usercontroller@ubahpassword');
    Route::post('/sipesan/changepassword', 'App\Http\Controllers\usercontroller@submit')->name('change.password');
});
