@extends('layouts.app')

@section('content')
    @if (session('status'))
        <div class="alert alert-success" role="alert">
            {{ session('status') }}
        </div>
    @endif

    <form method="POST" action="{{ route('password.email') }}">
        @csrf

        <div class="form-group">
            <label for="email" class="text-md-right">{{ __('E-Mail Address') }}</label>

            <div class="col-md-12">
                <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>

                @if ($errors->has('email'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('email') }}</strong>
                    </span>
                @endif
            </div>
        </div>

        <div class="form-group row mb-0">
            <div class="col-md-12 offset-md-1">
                <button type="submit" class="btn btn-primary">
                    {{ __('Restablecer contraseña') }}
                </button>
                <a class="btn btn-link" href="{{ route('login') }}" style="color: #85b4f2;">
                    {{ __('Login') }}
                </a>
            </div>
        </div>
    </form>

@endsection
