@extends('errors::minimal')

@section('title', __('Unauthorized'))
@section('code', '401')
@section('message', __('Lo sentimos, No estas autorizado para ingresar a esta pagina. ' . config('app.name')))
