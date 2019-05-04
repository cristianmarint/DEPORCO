<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>{{ config('app.name') }}</title>

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="{{url('assets/bootstrap/css/bootstrap.min.css')}}">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="{{url('assets/fontawesome-5.8.1/css/solid.css')}}">
    <link rel="stylesheet" href="{{url('assets/fontawesome-5.8.1/css/brands.css')}}">
    <link rel="stylesheet" href="{{url('assets/fontawesome-5.8.1/css/fontawesome.min.css')}}">
    
    <link rel="stylesheet" href="{{asset('css/welcome.css')}}">

</head>
<body>
 

<nav class="navbar navbar-expand-lg  navbar-light bg-lignt static-top">
    <div class="container">

      <div class="row col-md-4 col-sm-12 col-lg-8">
          <a class="" href="/">
            <img src="{{url('/logo_deporco.svg')}}" width="50%" height="auto" >
        </a>
      </div>
        
        {{-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button> --}}

        <div class="row col-md-8 col-sm-12 col-lg-4 m-5">
            <div class=" mr-auto" >
                <ul class="navbar-nav">
                    <li class="nav-item ">
                        <a class="nav-link h4" href="#">TORNEOS</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link h4" href="#">LIGAS</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link h4" href="#">BLOG</a>
                    </li>
                </ul>
                </div>
        </div>
    </div>
</nav>


<div class="container">
    <div class="row">
      <div class="col-md-8 spacer-2 mx-auto mt-5">
        <blockquote class="blockquote">
                <p class="h3">Universitarios <mark>Saludables<mark></mark></mark></p><br><br>
                <p>Una iniciativa que busca integrar a las comunidades 
                    universitarias de la región por medio de el deporte y actividades 
                    saludables.
                </p>
        </blockquote>
      </div>
    </div>


    <div class="card-list row spacer-5 mx-auto">
        <div class="card">
          <div class="card_image gradient"> <img src="{{url('storage/storage/img/landing-page/f8.jpg')}}" /> </div>
          <div class="card_title title-white">
            <p>Torneo Futbol 8 COTECNOVA</p>
          </div>
        </div>

        <div class="card">
          <div class="card_image gradient"> <img src="{{url('storage/storage/img/landing-page/f11.jpg')}}" /> </div>
          <div class="card_title title-white">
            <p>Torneo Futbol 11 COTECNOVA</p>
          </div>
        </div>

        <div class="card">
          <div class="card_image gradient"> <img src="{{url('storage/storage/img/landing-page/v.jpg')}}" /> </div>
          <div class="card_title title-white">
            <p>Torneo Voleibol COTECNOVA</p>
          </div>
        </div>
    </div>



    <div class="row spacer-5">
          <div class="row mx-auto col-sm-12 col-xs-12 col-md-12 mb-5">
            <h2 class="m-5 mx-auto" style="color:#9b9b9b;"><i class="fas fa-landmark fa-md"></i>     INSTITUCIONES</h2>
          </div>

          <div class="row mx-auto col-sm-12 col-xs-12 col-md-12 mb-5">
            <div class="col-md-4 col-sm-12 col-xs-12 mb-5">
              <h4>IE SOR MARIA JULIANA</h4>
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12 mb-5">
              <h4>COTECNOVA</h4>
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12 mb-5">
              <h4>INSTITUTO CEIM</h4>
            </div>
          </div>            
          
          <div class="row mx-auto col-sm-12 col-xs-12 col-md-12 mb-5">
            <div class="col-md-4 col-sm-12 col-xs-12 mb-5">
              <h4>IE GABO</h4>
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12 mb-5">
              <h4>UNIVERSIDAD DEL VALLE - CARTAGO</h4>
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12 mb-5">
              <h4>INSTITUTO INEC</h4>
            </div>
          </div>
          
          <div class="row mx-auto col-sm-12 col-xs-12 col-md-12 mb-5">
            <div class="col-md-4 col-sm-12 col-xs-12 mb-5">
              <h4>IE ACADEMICO</h4>
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12 mb-5">
              <h4>UNIVERSIDAD ANTONIO NARIÑO</h4>
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12 mb-5">
              <h4>INSTITUTO INTEC</h4>
            </div>
          </div>
    </div>

</div>


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
