@extends('errors::minimal')

@section('title', __('Server Error'))
@section('code', '500')
@section('message', __('Whoops, algo salio mal en nuestros servidores. Estamos tratando de solucionarlo, soporte '.config('app.name')))
