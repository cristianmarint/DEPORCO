@extends('layouts.app')

@section('content')

<div class="container">
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img  alt="sing up image" src="{{url('storage/storage/img/app/email_reset.png')}}"></figure>
                        <a href="{{ route('login') }}" class="signup-image-link">{{ __('Poseo una cuenta') }}</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">{{ __('Reset Password') }}</h2>
                        <form method="POST" class="register-form" action="{{ route('password.email') }}" id="login-form">
                            @csrf
                            <div class="form-group">
                                <label ><i class="fas fa-user"></i></label>
                                <input id="email" type="email"  name="email" placeholder="{{ __('E-Mail') }}" required autofocus>
                
                                
                                
                                @if ($errors->has('email'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('email') }}</strong>
                                </span>
                                @endif
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="{{ __('Enviar enlace para restablecer contraseña') }}">
                            </div>
                            @if (session('status'))
                                <div class="alert alert-success" role="alert">
                                    {{ session('status') }}
                                </div>
                            @endif
                        </form>
                    </div>
                </div>
            </div>
        </section>

    </div>
</div>
@endsection
