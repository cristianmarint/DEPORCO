@extends('errors::illustrated-layout')

@section('code', '503')
@section('title', __('Service Unavailable'))

@section('image')
    <div style="background-image: url({{ asset('/svg/503.svg') }});" class="absolute pin bg-cover bg-no-repeat md:bg-left lg:bg-center">
    </div>
@endsection

@section('message', __($exception->getMessage() ?: 'Lo sentimos, estamos realizando mantenimiento. 👷 Por favor vuelve pronto.  
                                                    Volveremos tan pronto como sea posible Soporte '. config('app.name') . '❤️' ))
