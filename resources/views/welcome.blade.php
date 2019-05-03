<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>{{ config('app.name') }}</title>

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="{{url('assets/bootstrap/css/bootstrap.min.css')}}">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="{{url('assets/bootstrap/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/welcome.css')}}">

</head>
<body>

        <!--Navbar -->
        <nav class="mb-1 navbar navbar-expand-lg navbar-dark secondary-color lighten-1">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-555"
            aria-controls="navbarSupportedContent-555" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent-555">
            <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Features</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Pricing</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-555" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">Dropdown
                </a>
                <div class="dropdown-menu dropdown-secondary" aria-labelledby="navbarDropdownMenuLink-555">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>
            </ul>
            <ul class="navbar-nav ml-auto nav-flex-icons">
            <li class="nav-item">
                <a class="nav-link waves-effect waves-light">1
                <i class="fas fa-envelope"></i>
                </a>
            </li>
            <li class="nav-item avatar dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-55" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                <img src="https://mdbootstrap.com/img/Photos/Avatars/avatar-2.jpg" class="rounded-circle z-depth-0"
                    alt="avatar image">
                </a>
                <div class="dropdown-menu dropdown-menu-right dropdown-secondary"
                aria-labelledby="navbarDropdownMenuLink-55">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>
            </ul>
        </div>
        </nav>
        <!--/.Navbar -->


        <footer id="myFooter">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3">
                            <img src="{{url('/logo.svg')}}" width="150" height="150" alt="">
                        </div>
                        <div class="col-sm-2">
                            <h5>Get started</h5>
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Sign up</a></li>
                                <li><a href="#">Downloads</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-2">
                            <h5>About us</h5>
                            <ul>
                                <li><a href="#">Company Information</a></li>
                                <li><a href="#">Contact us</a></li>
                                <li><a href="#">Reviews</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-2">
                            <h5>Support</h5>
                            <ul>
                                <li><a href="#">FAQ</a></li>
                                <li><a href="#">Help desk</a></li>
                                <li><a href="#">Forums</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-3">
                            <div class="social-networks">
                                <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="google"><i class="fa fa-google-plus"></i></a>
                            </div>
                            <button type="button" class="btn btn-default" style="background-color:#0F94F9;">Contactanos</button>
                        </div>
                    </div>
                </div>
            </footer>

        <script src="{{url('assets/jquery/jquery.min.js')}}"></script>
</body>
</html>
