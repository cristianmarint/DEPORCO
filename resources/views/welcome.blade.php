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
    {{-- <link rel="stylesheet" href="{{url('assets/font-awesome/css/font-awesome.min.css')}}"> --}}
    {{-- <link rel="stylesheet" href="{{url('assets/font-awesome/css/brands.css')}}"> --}}

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/solid.css" integrity="sha384-QokYePQSOwpBDuhlHOsX0ymF6R/vLk/UQVz3WHa6wygxI5oGTmDTv8wahFOSspdm" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/regular.css" integrity="sha384-FKw7x8fCxuvzBwOJmhTJJsKzBl8dnN9e2R4+pXRfYoHivikuHkzWyhKWDSMcGNK8" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/brands.css" integrity="sha384-n9+6/aSqa9lBidZMRCQHTHKJscPq6NW4pCQBiMmHdUCvPN8ZOg2zJJTkC7WIezWv" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/fontawesome.css" integrity="sha384-vd1e11sR28tEK9YANUtpIOdjGW14pS87bUBuOIoBILVWLFnS+MCX9T6MMf0VdPGq" crossorigin="anonymous">
    
    <link rel="stylesheet" href="{{asset('css/welcome.css')}}">

</head>
<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg  navbar-light bg-lignt static-top">
    <div class="container">
        <a class="navbar-brand" href="#">
            <img src="{{url('/logo_deporco.svg')}}" width="25%" height="auto" alt="">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="#">TORNEOS</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">LIGAS</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">BLOG</a>
            </li>


            @if (Route::has('login'))
            <li class="nav-item">
                @auth
                {{-- <a href="{{ url('/home') }}">{{ Auth::user()->role->name }} - {{ Auth::user()->datos_basicos->primer_nombre }} {{ Auth::user()->datos_basicos->primer_apellido }}</a> --}}
                <a href="{{ url('/home') }}" class="nav-link" style="text-transform: uppercase;color:#4a85fe;">{{ Auth::user()->datos_basicos->primer_nombre }} </a>
                @else
                    <a href="{{ route('login') }}" class="nav-link" style="text-transform: uppercase;">Ingresar</a>
                    {{-- El registro de usuarios deberia ser llevado por administradores --}}
                    {{-- <a href="{{ route('register') }}">Registrarse</a> --}}
                @endauth
            </li>
            @endif


        </ul>
        </div>
    </div>
</nav>


<!-- Page Content -->
<div class="container">

    <div class="row  mt-5 mb-5 mx-auto">
            <blockquote class="blockquote">
                    <p class="h3">Universitarios <mark>Saludables<mark></p><br>
                    <p>Una iniciativa que busca integrar a las comunidades universitarias de la región por medio de el deporte y actividades saludables.</p>
            </blockquote>
    </div>

        <div class="row mt-5 mr-4 mx-auto">
                <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="{{url('storage/storage/img/torneo/landing_page/f8.jpg')}}" alt="Card image cap">
                        <div class="card-body">
                          <p class="card-text"><h5>Torneo Futbol 8 COTECNOVA</h5></p>
                        </div>
                </div>

                <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="{{url('storage/storage/img/torneo/landing_page/f11.jpg')}}" alt="Card image cap">
                        <div class="card-body">
                          <p class="card-text"><h5>Torneo Futbol 11 COTECNOVA</h5></p>
                        </div>
                </div>

                <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="{{url('storage/storage/img/torneo/landing_page/v.jpg')}}" alt="Card image cap">
                        <div class="card-body">
                          <p class="card-text"><h5>Torneo Voleibol COTECNOVA</h5></p>
                        </div>
                </div>
        </div>


        <div  class="container-fluid text-center mt-5">
                <h2 class="mt-5 mb-5"><i class="fas fa-landmark fa-md"></i>     INSTITUCIONES</h2>
                <br>
                <div class="row slideanim slide">
                  <div class="col-sm-4 mb-5">
                    <span class="glyphicon glyphicon-off logo-small"></span>
                    <h4>IE SOR MARIA JULIANA</h4>
                  </div>
                  <div class="col-sm-4 mb-5">
                    <span class="glyphicon glyphicon-heart logo-small"></span>
                    <h4>COTECNOVA</h4>
                  </div>
                  <div class="col-sm-4  mb-5">
                    <span class="glyphicon glyphicon-lock logo-small"></span>
                    <h4>INSTITUTO CEIM</h4>
                  </div>
                </div>
                <br><br>
                <div class="row slideanim slide">
                  <div class="col-sm-4  mb-5">
                    <span class="glyphicon glyphicon-leaf logo-small"></span>
                    <h4>IE GABO</h4>
                  </div>
                  <div class="col-sm-4  mb-5">
                    <span class="glyphicon glyphicon-certificate logo-small"></span>
                    <h4>UNIVERSIDAD DEL VALLE - CARTAGO</h4>
                  </div>
                  <div class="col-sm-4  mb-5">
                    <span class="glyphicon glyphicon-wrench logo-small"></span>
                    <h4 >INSTITUTO INEC</h4>
                  </div>
                </div>
                <br><br>
                <div class="row slideanim slide">
                  <div class="col-sm-4  mb-5">
                    <span class="glyphicon glyphicon-leaf logo-small"></span>
                    <h4>IE ACADEMICO</h4>
                  </div>
                  <div class="col-sm-4  mb-5">
                    <span class="glyphicon glyphicon-certificate logo-small"></span>
                    <h4>UNIVERSIDAD ANTONIO NARIÑO</h4>
                  </div>
                  <div class="col-sm-4  mb-5">
                    <span class="glyphicon glyphicon-wrench logo-small"></span>
                    <h4 >INSTITUTO INTEC</h4>
                  </div>
                </div>
              </div>

</div>

<!-- /.container -->


<footer id="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <img src="{{url('/logo.svg')}}" style="display: block;margin: auto;" width="50%" height="auto" alt="">
                </div>

                <div class="col-sm-8 row">
                    <div class="col-sm-3 col-md-4">
                        <div class="social-networks" >
                                <a href="#" class="twitter"><i class="fab fa-twitter"></i></a>
                                <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
                                <a href="#" class="google"><i class="fab fa-google"></i></a>
                            </div>
                        <button type="button" class="btn btn-default" style="background-color:#0F94F9;">Contactanos</button>
                    </div>

                    <div class="col-sm-3 col-md-4">
                        <h5>Conocenos</h5>
                        <ul>
                            <li><a href="#">Company Information</a></li>
                            <li><a href="#">Contact us</a></li>
                            <li><a href="#">Reviews</a></li>
                        </ul>
                    </div>

                    <div class="col-sm-3 col-md-4">
                        <h5>Soporte</h5>
                        <ul>
                            <li><a href="#">FAQ</a></li>
                            <li><a href="#">Help desk</a></li>
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
