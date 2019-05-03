@extends('errors::minimal')

@section('title', __('Too Many Requests'))
@section('code', '429')
@section('message', __('Lo sentimos, Estamos recibiendo demasiadas solicitudes e nuestros servidores. ' . config('app.name')))