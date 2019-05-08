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
    <!-- Google fonts - Montserrat -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:300,400,700">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="{{url('assets/fontawesome-5.8.1/css/solid.css')}}">
    <link rel="stylesheet" href="{{url('assets/fontawesome-5.8.1/css/brands.css')}}">
    <link rel="stylesheet" href="{{url('assets/fontawesome-5.8.1/css/fontawesome.min.css')}}">
    
    <link rel="stylesheet" href="{{asset('css/welcome.css')}}">

</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-ligh static-top">
      <div class="container">
        <img src="{{url('/logo_deporco.svg')}}" width="30%" height="auto" >
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon" style="color:#F8554B !important;"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="/">INICIO
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">TORNEOS</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">LIGAS</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">BLOG</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

{{-- Contenido --}}
    <div class="container">
        <div class="row">
          <div class="col-md-7 spacer-2 mx-auto mt-5">
            <blockquote class="blockquote">
                    <p class="h3">Universitarios <mark>Saludables<mark></mark></mark></p><br><br>
                    <p>Una iniciativa que busca integrar a las comunidades 
                        universitarias de la región por medio de el deporte y actividades 
                        saludables.
                    </p>
            </blockquote>
          </div>
        </div>

        {{-- Torneos activos --}}
        <div class="card-list row spacer-5 mx-auto">
            <div class="card">
              <div class="card_image gradient"> <img src="{{url('storage/storage/img/app/landing-page/f8.jpg')}}" /> </div>
              <div class="card_title title-white">
                <p>Torneo Futbol 8 COTECNOVA</p>
              </div>
            </div>

            <div class="card">
              <div class="card_image gradient"> <img src="{{url('storage/storage/img/app/landing-page/f11.jpg')}}" /> </div>
              <div class="card_title title-white">
                <p>Torneo Futbol 11 COTECNOVA</p>
              </div>
            </div>

            <div class="card">
              <div class="card_image gradient"> <img src="{{url('storage/storage/img/app/landing-page/v.jpg')}}" /> </div>
              <div class="card_title title-white">
                <p>Torneo Voleibol COTECNOVA</p>
              </div>
            </div>
        </div>

        {{-- Instituciones --}}
        <div class="row spacer-5">
              <div class="row mx-auto col-sm-12 col-xs-12 col-md-12 mb-5">
                <h2 class="m-5 mx-auto" style="color:#9b9b9b;"><i class="fas fa-landmark fa-md"></i>     INSTITUCIONES</h2>
              </div>

              <div class="row mx-auto col-sm-12 col-xs-12 col-md-12 mb-5">
                <div class="col-md-4 col-sm-12 col-xs-12 mb-5">
                  <h4> <strong>IE SOR MARIA JULIANA</strong></h4>
                </div>
                <div class="col-md-4 col-sm-12 col-xs-12 mb-5">
                  <h4> <strong>COTECNOVA</strong></h4>
                </div>
                <div class="col-md-4 col-sm-12 col-xs-12 mb-5">
                  <h4> <strong>INSTITUTO CEIM</strong></h4>
                </div>
              </div>            
              
              <div class="row mx-auto col-sm-12 col-xs-12 col-md-12 mb-5">
                <div class="col-md-4 col-sm-12 col-xs-12 mb-5">
                  <h4> <strong>IE GABO</strong></h4>
                </div>
                <div class="col-md-4 col-sm-12 col-xs-12 mb-5">
                  <h4> <strong>UNIVERSIDAD DEL VALLE - CARTAGO</strong></h4>
                </div>
                <div class="col-md-4 col-sm-12 col-xs-12 mb-5">
                  <h4> <strong>INSTITUTO INEC</strong></h4>
                </div>
              </div>
              
              <div class="row mx-auto col-sm-12 col-xs-12 col-md-12 mb-5">
                <div class="col-md-4 col-sm-12 col-xs-12 mb-5">
                  <h4> <strong>IE ACADEMICO</strong></h4>
                </div>
                <div class="col-md-4 col-sm-12 col-xs-12 mb-5">
                  <h4> <strong>UNIVERSIDAD ANTONIO NARIÑO</strong></h4>
                </div>
                <div class="col-md-4 col-sm-12 col-xs-12 mb-5">
                  <h4> <strong>INSTITUTO INTEC</strong></h4>
                </div>
              </div>
        </div>

    </div>

    {{-- Footer --}}
    <footer id="footer">
            <div class="container spacer-5 mx-auto">
                <div class="row">
                    <div class="col-sm-3">
                        <img src="{{url('/logo.svg')}}" style="display: block;margin: auto;" width="50%" height="auto" alt="">
                    </div>

                    <div class="col-sm-8 row">
                        <div class="col-sm-3 col-md-4">
                            <div class="social-networks" >
                                    <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" target="_blank" class="twitter"><i class="fab fa-twitter"></i></a>
                                    <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" target="_blank" class="facebook"><i class="fab fa-facebook-f"></i></a>
                                    <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" target="_blank" class="google"><i class="fab fa-google"></i></a>
                                </div>
                            <button type="button" class="btn btn-default" style="background-color:#0F94F9;"><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" target="_blank" style="color:white;"> Contactanos</a></button>
                        </div>

                        <div class="col-sm-3 col-md-4">
                            <h5>Conocenos</h5>
                            <ul>
                                <li class="nav-item"><a class="nav-link" href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" target="_blank">Sobre nosotros</a></li>
                                <li class="nav-item"><a class="nav-link" href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" target="_blank">Prensa</a></li>
                            </ul>
                        </div>

                        <div class="col-sm-3 col-md-4">
                            <h5>Soporte</h5>
                            <ul>
                                <li class="nav-item"><a class="nav-link" href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" target="_blank">FAQ</a></li>
                                <li class="nav-item"><a class="nav-link" href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" target="_blank">Reglamento</a></li>


                                @if (Route::has('login'))
                                <li class="nav-item">
                                    @auth
                                    {{-- <a href="{{ url('/home') }}">{{ Auth::user()->role->name }} - {{ Auth::user()->datos_basicos->primer_nombre }} {{ Auth::user()->datos_basicos->primer_apellido }}</a> --}}
                                    <a href="{{ url('/home') }}" class="nav-link" style="text-transform: uppercase;color:#F8554B;">{{ Auth::user()->datos_basicos->primer_nombre }} </a>
                                    @else
                                        <a href="{{ route('login') }}" class="nav-link">Ingresar</a>
                                        {{-- El registro de usuarios deberia ser llevado por administradores --}}
                                        {{-- <a href="{{ route('register') }}">Registrarse</a> --}}
                                    @endauth
                                </li>
                                @endif
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

    <script src="{{url('assets/jquery/jquery.min.js')}}"></script>
    <script src="{{url('assets/bootstrap/js/bootstrap.min.js')}}"></script>
</body>
</html>
