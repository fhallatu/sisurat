@extends('layouts.master')

@section('content')
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1> Tambah Data Surat Pengabdian </h1>
        </div>
        
        <livewire:suratpengabdian :pengabdian="$pengabdian">
</div>
@endsection