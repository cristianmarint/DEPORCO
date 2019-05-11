@extends('layouts.app')

@section('content')
<div class="container">
           <section class="signup">
                <div class="container">
                    <div class="signup-content">
                        <div class="signup-form">
                            <h2 class="form-title">{{ __('Verificación de correo') }}</h2>
                                <div class="form-group">
                                    @if (session('resent'))
                                        <div class="alert alert-success" role="alert">
                                            {{ __('Se acaba de enviar el enlace de verificación a tu correo.') }}
                                        </div>
                                    @endif

                                    {{ __('Antes de continuar, Por favor revisa tu correo y accede al enlace de verificacion.') }}
                                    {{ __('Si no recibes el correo, puedes solicitar otro dando') }} <a href="{{ route('verification.resend') }}">{{ __('click aqui para reenviarlo') }}</a>.
                                </div>

                        </div>
                        <div class="signup-image">
                            <img  alt="sing up image" src="{{url('storage/storage/img/app/login-registro/email_verify.jpg')}}"></figure>
                            <a href="{{ route('login') }}" class="signup-image-link">{{ __('I am already member') }}</a>
                        </div>
                    </div>
                </div>
            </section>
</div>
@endsection
