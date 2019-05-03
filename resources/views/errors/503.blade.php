@extends('errors::minimal')

@section('title', __('Service Unavailable'))
@section('code', '503')

@section('message', __($exception->getMessage() ?: 'Lo sentimos, estamos realizando mantenimiento. 👷 Por favor vuelve pronto.  
                                                    Volveremos tan pronto como sea posible Soporte '. config('app.name') . '❤️' ))