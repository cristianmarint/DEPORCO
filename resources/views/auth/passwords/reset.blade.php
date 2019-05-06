@extends('layouts.app')

@section('content')
    <div class="container">
            <section class="signup">
                  <div class="container">
                      <div class="signup-content">
                          <div class="signup-form">
                          <h2 class="form-title">{{ __('Password Reset')}}</h2>
                              <form method="POST" class="register-form" action="{{ route('password.update') }}" id="register-form">
                              @csrf
                              <input type="hidden" name="token" value="{{ $token }}">

                                  <div class="form-group">
                                      <label for="email"><i class="fas fa-envelope"></i></label>
                                      <input id="email" type="email" name="email" placeholder="{{ __('E-Mail Address') }}" value="{{ $email ?? old('email') }}" required autofocus>
                                        @if ($errors->has('email'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('email') }}</strong>
                                            </span>
                                        @endif
                                  </div>
                                  <div class="form-group">
                                      <label for="password"><i class="fas fa-lock"></i></i></label>
                                      <input id="password" type="password" name="password" required>
                                      @if ($errors->has('password'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('password') }}</strong>
                                            </span>
                                        @endif
                                  </div>
  
                                  <div class="form-group">
                                      <label for="password-confirm"><i class="fas fa-unlock"></i></label>
                                      <input id="password-confirm" type="password" name="password_confirmation" required>
                                  </div>
  
                                  <div class="form-group form-button">
                                      <input type="submit" class="form-submit" value="{{ __('Reset Password') }}">
                                  </div>
                              </form>
                          </div>
                          <div class="signup-image">
                              <img  alt="sing up image" src="{{url('storage/storage/img/app/password_reset.jpg')}}"></figure>
                              <a href="{{ route('login') }}" class="signup-image-link">{{ __('I am already member') }}</a>
                          </div>
                      </div>
                  </div>
              </section>
      
  </div>
@endsection
