@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Verificación de correo') }}</div>

                <div class="card-body">
                    @if (session('resent'))
                        <div class="alert alert-success" role="alert">
                            {{ __('Se acaba de enviar el enlace de verificación a tu correo.') }}
                        </div>
                    @endif

                    {{ __('Antes de continuar, Por favor revisa tu correo y accede al enlace de verificacion.') }}
                    {{ __('Si no recibes el correo, puedes solicitar otro dando') }} <a href="{{ route('verification.resend') }}">{{ __('click aqui para reenviarlo') }}</a>.
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
