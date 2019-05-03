@extends('errors::minimal')

@section('title', __('Forbidden'))
@section('code', '403')
@section('message', __($exception->getMessage() ?: 'Lo sentimos, Tienes el acceso prohibido a esta pagina.' . config('app.name')))
