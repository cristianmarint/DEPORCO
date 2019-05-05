<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{config('app.name')}}</title>
    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="{{url('assets/bootstrap/css/bootstrap.min.css')}}">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="{{url('assets/font-awesome/css/font-awesome.min.css')}}">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="{{url('css/style.sea.css')}}" id="theme-stylesheet">
</head>
<body>
    <div class="page login-page" style="background-color:#E7ECFB !important;">
        <div class="container d-flex align-items-center">
            <div class="form-holder has-shadow">
                <div class="row">
                    <!-- Logo & Information Panel-->
                    <div class="col-lg-6">
                        <div class="info d-flex align-items-center" style="background-color: rgba(230, 232, 233,0.8)  !important;">
                            <div class="content">
                                <div class="logo">
                                    {{-- <h1>{{ config('app.name') }}</h1> --}}
                                    <img src="{{url('/logo_deporco.svg')}}" class="mx-auto" width="100%" height="auto" >
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Form Panel    -->
                    <div class="col-lg-6 bg-white">
                        <div class="form d-flex align-items-center">
                            <div class="content">
                               @yield('content')
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        {{-- <div class="copyrights text-center">
            <p>Design by <a href="https://bootstrapious.com/admin-templates" class="external">Bootstrapious</a>
                <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
            </p>
        </div> --}}
    </div>

    <!-- JavaScript files-->
    <script src="{{url('assets/jquery/jquery.min.js')}}"></script>
    <script src="{{url('assets/bootstrap/js/bootstrap.min.js')}}"></script>
    <script src="{{url('assets/sweetalert/dist/sweetalert.min.js')}}"> </script>
    <!-- Main File-->
    <script src="{{url('js/front.js')}}"></script>
</body>
</html>
