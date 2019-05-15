@extends('layouts.app')

@section('content')
<div class="container">
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image ">
                        <figure><img  alt="sing up image" src="{{url('storage/storage/app/login-registro/login.jpg')}}"></figure>
                        <a href="{{ route('register') }}" class="signup-image-link">{{ __('Crear una cuenta') }}</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">{{ __('Ingresar') }}</h2>
                        <form method="POST" class="register-form" action="{{ route('login') }}" id="login-form">
                                @csrf
                            <div class="form-group">
                                <label ><i class="fas fa-user"></i></label>
                                <input id="email" type="email"  name="email" placeholder="{{ old('email') }}" required autofocus>
                                    @if ($errors->has('email'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('email') }}</strong>
                                        </span>
                                    @endif
                            </div>
                            <div class="form-group">
                                <label ><i class="fas fa-lock"></i></label>
                                <input id="password" type="password"  name="password" required>
                                @if ($errors->has('password'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>

                            @if (session('error'))
                                <div class="alert alert-danger">
                                    {{ session('error') }}
                                </div>
                            @endif

                            <div class="form-group">
                                <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                                <label for="remember" class="label-agree-term"><span><span></span></span>{{ __('Recuerdame') }}</label>
                            </div>
                            <div class="form-group">
                                    <label for="agree-term" class="label-agree-term"><a href="{{route('deporco.terms')}}" class="term-service">Condiciones</a></label>
                            </div>
                            <div class="form-group">
                                @if (Route::has('password.request'))
                                    <a class="btn-link" href="{{ route('password.request') }}">{{ __('¿Olvido su contraseña?') }}</a>
                                @endif
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="{{ __('Ingresar') }}">
                            </div>
                        </form>

                        <div class="social-login">
                            <span class="social-label">Ingresar con</span>
                            <ul class="socials">
                                {{-- Iconos de login con socialite --}}
                                <a href="{{route('oauth.login','google')}}" class="btn ">
                                        <svg width="24px" height="24px" viewBox="0 0 520 520" version="1.1">         
                                                <g id="Page-2" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <g transform="translate(-614.000000, -553.000000)" fill="#000000" fill-rule="nonzero">
                                                            <g id="google" transform="translate(614.000000, 553.000000)">                                       
                                                                <path style="fill:#FBBB00;" d="M113.47,309.408L95.648,375.94l-65.139,1.378C11.042,341.211,0,299.9,0,256  c0-42.451,10.324-82.483,28.624-117.732h0.014l57.992,10.632l25.404,57.644c-5.317,15.501-8.215,32.141-8.215,49.456  C103.821,274.792,107.225,292.797,113.47,309.408z"/>
                                                                <path style="fill:#518EF8;" d="M507.527,208.176C510.467,223.662,512,239.655,512,256c0,18.328-1.927,36.206-5.598,53.451  c-12.462,58.683-45.025,109.925-90.134,146.187l-0.014-0.014l-73.044-3.727l-10.338-64.535  c29.932-17.554,53.324-45.025,65.646-77.911h-136.89V208.176h138.887L507.527,208.176L507.527,208.176z"/>
                                                                <path style="fill:#28B446;" d="M416.253,455.624l0.014,0.014C372.396,490.901,316.666,512,256,512  c-97.491,0-182.252-54.491-225.491-134.681l82.961-67.91c21.619,57.698,77.278,98.771,142.53,98.771  c28.047,0,54.323-7.582,76.87-20.818L416.253,455.624z"/>
                                                                <path style="fill:#F14336;" d="M419.404,58.936l-82.933,67.896c-23.335-14.586-50.919-23.012-80.471-23.012  c-66.729,0-123.429,42.957-143.965,102.724l-83.397-68.276h-0.014C71.23,56.123,157.06,0,256,0  C318.115,0,375.068,22.126,419.404,58.936z"/>
                                                            </g>
                                                        </g>
                                                    </g>
                                        </svg>
                                    </a>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </section>

    </div>
</div>
@endsection
