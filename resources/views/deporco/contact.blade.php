@extends('layouts.app')

@section('content')
<div class="container">
        <section class="sign-in">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img  alt="sing up image" src="{{url('storage/storage/img/app/contact-page.png')}}"></figure>
                        <a href="{{ route('deporco.welcome') }}" class="signup-image-link">{{ __('Inicio') }}</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">{{ __('Contactanos') }}</h2>
                        <form method="POST" class="register-form" action="" id="login-form">
                            @csrf
                            <div class="form-group">
                                    <label class="col-sm-2 col-form-labe"><i class="fas fa-envelope"></i>Email</label>
                                    <input id="email" type="email"  name="email" placeholder="{{ old('email') }}" required autofocus>
                                        @if ($errors->has('email'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('email') }}</strong>
                                            </span>
                                        @endif
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 col-form-labe"><i class="fas fa-info-circle"></i>Asunto</label>
                                <input id="asunto" type="text"  name="asunto" required>
                                @if ($errors->has('asunto'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('asunto') }}</strong>
                                    </span>
                                @endif
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 col-form-labe"><i class="fas fa-align-justify"></i>Mensaje</label>
                                <input id="mensaje" type="text"  name="mensaje" required>
                                @if ($errors->has('mensaje'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('mensaje') }}</strong>
                                    </span>
                                @endif
                            </div>

                            <div class="form-group">
                                    <label for="agree-term" class="label-agree-term"><a href="{{route('deporco.terms')}}" class="term-service">Condiciones</a></label>
                            </div>
                            @if (session('error'))
                                <div class="alert alert-danger">
                                    {{ session('error') }}
                                </div>
                            @endif
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="{{ __('Enviar') }}">
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </section>
</div>
@endsection
