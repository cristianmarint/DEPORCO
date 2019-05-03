@extends('errors::minimal')

@section('title', __('Page Expired'))
@section('code', '419')
@section('message', __('Lo sentimos, Tu sesion ha expirado. Por favor recarga la pagina he intenta de nuevo.' . config('app.name')))
