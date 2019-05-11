@extends('layouts.deporco')
@section('title','Contactanos')
@section('content')
    <section id="about" class="mt-5">
            <div class="container">
                <div class="row">
                        <div class="col-lg-6 mx-auto col-md-12">
                                <div class="about-img">
                                <img  class="img-fluid" src="{{url('storage/storage/app/contact.svg')}}">
                                </div>
                        </div>
        
                        <div class="about-content col-md-12 col-lg-12">
                            <h2 >{{ __('Contactanos') }}</h2>
                            <form method="POST" class="" action="" id="login-form">
                                @csrf
                                <div class="form-group">
                                    <h3>Email</h3>
                                    <div class="input-group mb-2">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fas fa-envelope"></i></div>
                                        </div>
                                        <input id="email" type="email" class="form-control" name="email" placeholder="{{ old('email') }}" required autofocus>
                                        @if ($errors->has('email'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('email') }}</strong>
                                        </span>
                                        @endif
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <h3>Asunto</h3>
                                    <div class="input-group mb-2">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fas fa-info-circle"></i></div>
                                        </div>
                                        <input id="asunto" type="asunto" class="form-control" name="asunto" placeholder="{{ old('asunto') }}" required autofocus>
                                        @if ($errors->has('asunto'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('asunto') }}</strong>
                                        </span>
                                        @endif
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <h3>Mensaje</h3>
                                    <div class="input-group mb-2">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fas fa-align-justify"></i></div>
                                        </div>
                                        <textarea id="mensaje" type="text" class="form-control" name="mensaje" required></textarea>
                                    </div>
                                    @if ($errors->has('mensaje'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('mensaje') }}</strong>
                                        </span>
                                    @endif
                                </div>
        
                                <div class="form-group">
                                        <label for="agree-term" class="alert-link"><a href="{{route('deporco.terms')}}" class="term-service">Condiciones</a></label>
                                </div>

                                @if (session('error'))
                                    <div class="alert alert-danger">
                                        {{ session('error') }}
                                    </div>
                                @endif

                                <div class="form-group form-button text-center">
                                    <input type="submit" name="signin" id="signin" class="btn btn-primary btn-md" value="{{ __('Enviar') }}">
                                </div>
                            </form>
        
                        </div>
                </div>
            </div>
    </section>
@endsection
