@extends('errors::minimal')

@section('title', __('Pagina no encontrada'))
@section('code', '404')
@section('message', __('La pagina que buscabas no pudo ser localizada, lo sentimos. '. config('app.name')  ))

