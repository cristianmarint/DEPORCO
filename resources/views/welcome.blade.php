<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>{{ config('app.name') }}</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,500,600,700,700i|Montserrat:300,400,500,600,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link rel="stylesheet" href="{{url('assets/bootstrap/css/bootstrap.min.css')}}">

  <!-- Libraries CSS Files -->
  <link rel="stylesheet" href="{{url('assets/fontawesome-5.8.1/css/fontawesome.min.css')}}">
  <link rel="stylesheet" href="{{url('assets/fontawesome-5.8.1/css/brands.min.css')}}">
  <link rel="stylesheet" href="{{url('assets/fontawesome-5.8.1/css/solid.min.css')}}">
  <link rel="stylesheet" href="{{url('assets/animate/animate.min.css')}}">
  <link rel="stylesheet" href="{{url('assets/ionicons/css/ionicons.min.css')}}">
  <link rel="stylesheet" href="{{url('assets/owlcarousel/assets/owl.carousel.min.css')}}">
  <link rel="stylesheet" href="{{url('assets/lightbox/css/lightbox.min.css')}}">

  <!-- Main Stylesheet File -->
  <link rel="stylesheet" href="{{url('css/deporco.blade.css')}}" id="theme-stylesheet">
</head>

<body>
  <header id="header">
    <div class="container">
      <div class="logo float-left">
        <a href="{{route('deporco.welcome')}}" class="scrollto"><img src="{{url('/logo_deporco.svg')}}" class="img-fluid"></a>
      </div>

      <nav class="main-nav float-right d-none d-lg-block">
        <ul>
          <li class="{{Request::is('/') ? 'active': ''}}"><a href="{{route('deporco.welcome')}}">Inicio</a></li>
          <li class="{{Request::is('about') ? 'active': ''}}"><a href="{{route('deporco.about')}}">Conocenos</a></li>
          @auth
              <li ><a href="{{route('home.index')}}" style="color:#FF4040 !important;" >{{Auth::user()->name}}</a></li>
          @endauth
          @guest
              <li class="{{Request::is('login') ? 'active': ''}}"><a href="{{route('login')}}">Ingresar</a></li>
          @endguest
        </ul>
      </nav>      
    </div>
  </header>

  <main id="main">
      <section id="intro" class="clearfix">
          <div class="container d-flex h-100">
            <div class="row justify-content-center align-self-center">
              <div class="col-md-6 intro-info order-md-first order-last">
                <h2>Soluciones rapidas<br>para tus <span>competiciones!</span></h2>
                <div>
                  <a href="{{route('register')}}" class="btn-get-started scrollto">Registrate</a>
                </div>
              </div>
        
              <div class="col-md-6 intro-img order-md-last order-first">
                <img src="{{url('storage/storage/app/welcome/intro-img-1.2.svg')}}" alt="" class="img-fluid">
              </div>
            </div>
      
          </div>
      </section>

      {{--Inicio Compartir--}}
      <section id="why-us" class="wow fadeIn">
          <div class="container-fluid">
            
            <header class="section-header">
              <h3>¿Listo para compartir?</h3>
            </header>
    
            <div class="row">
    
              <div class="col-lg-6">
                <div class="why-us-img">
                  <img src="{{url('storage/storage/app/welcome/whyus-2.svg')}}" alt="" class="img-fluid">
                </div>
              </div>
    
              <div class="col-lg-6">
                <div class="why-us-content">
                  <p>Crea un torneo,registra a tus jugadores y preparate para pasar los mejores momentos con tus amigos.</p>
                  <p>Tambien puedes participar en un torneo o liga si el encargado ya te registro.</p>
    
                  <div class="features wow bounceInUp clearfix">
                    <i class="fas fa-volleyball-ball" style="color: #E54EFF;"></i>
                    <h4>Voleyball</h4>
                    <p>Salta,bloquea y rie.</p>
                  </div>
    
                  <div class="features wow bounceInUp clearfix">
                    <i class="fas fa-futbol"  style="color: #4A85FE;"></i>
                    <h4>Futbol</h4>
                    <p>Corre, anota y conviértete en el jugador destacado.</p>
                  </div>
                  
                  <div class="features wow bounceInUp clearfix">
                    <i class="fas fa-basketball-ball"  style="color: #FFAD0A;"></i>
                    <h4>Baloncesto</h4>
                    <p>¿Serás el siguiente Michael Jordan?</p>
                  </div>                  
                </div>    
              </div>    
            </div>    
          </div>
    
          <div class="container">
              <div class="row counters">
      
                <div class="col-lg-3 col-6 text-center">
                  <span data-toggle="counter-up">{{$institutos}}</span>
                  <p>Instituciones</p>
                </div>      
                <div class="col-lg-3 col-6 text-center">
                  <span data-toggle="counter-up">{{$torneos}}</span>
                  <p>Torneos</p>
                </div>      
                <div class="col-lg-3 col-6 text-center">
                  <span data-toggle="counter-up">{{$equipos}}</span>
                  <p>Equipos</p>
                </div>      
                <div class="col-lg-3 col-6 text-center">
                  <span data-toggle="counter-up">{{$datosbasicos}}</span>
                  <p>Jugadores</p>
                </div>        
              </div>
      
            </div>
          </section>
          {{--Fin Compartir--}}

          {{--Incio clientes--}}
          <section id="clients" class="wow fadeInUp">
              <div class="container">
        
                <header class="section-header">
                  <h3>Empresas e Instituciones Participantes</h3>
                </header>
        
                <div class="owl-carousel clients-carousel">
                  <img src="{{url('storage/storage/app/welcome/iesmj.gif')}}" alt="">
                  <img src="{{url('storage/storage/app/welcome/iegabo.png')}}" alt="">
                  <img src="{{url('storage/storage/app/welcome/ieacademico.png')}}" alt="">
                  <img src="{{url('storage/storage/app/welcome/ieceim.png')}}" alt="">
                  <img src="{{url('storage/storage/app/welcome/sena.png')}}" alt="">
                  <img src="{{url('storage/storage/app/welcome/ucdc.png')}}" alt="">
                  <img src="{{url('storage/storage/app/welcome/udvalle.png')}}" alt="">
                  <img src="{{url('storage/storage/app/welcome/comfandi.jpg')}}" alt="">
                </div>
        
              </div>
            </section>{{--Incio clientes--}}
  </main>

  <footer id="footer" class="section-bg">
    <div class="footer-top">
      <div class="container">
        <div class="row ">
              <div class="col-sm-2"></div>
              <div class="col-sm-4">
                <div class="footer-info">
                  <a href="{{route('deporco.welcome')}}" class="scrollto"><img src="{{url('/logo_deporco.svg')}}" class="img-fluid" style="display: block;margin: auto;width:30% !important;" width="" height="auto" alt=""></a>
                  <p>Gestiona tus torneos o ligas de una forma rapida,eficiente y muy sencilla con nosotros.<i class="fas fa-heart" style="color:red;"></i></p>
                </div>
              </div>
              
              <div class="col-sm-2"></div>
              <div class="col-sm-4">
                <div class="footer-links">
                    <h4 >Contactanos</h4>
                    <p>
                      Calle 10 Carrera 3 - 4 #8888<br>
                      Cartago, Valle del Cauca<br>
                      United States <br>
                      <strong>Telefono:</strong> 211 11 11<br>
                      <strong>Email:</strong> contacto@deporco.co<br>
                    </p>
                  </div>
              </div>
        </div>
      </div>
    </div>
  </footer>


  <a href="#" class="back-to-top"><i class="fas fa-chevron-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="{{url('assets/jquery/jquery.min.js')}}"></script>
  <script src="{{url('assets/jquery/jquery-migrate.min.js')}}"></script>
  <script src="{{url('assets/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
  <script src="{{url('assets/easing/easing.min.js')}}"></script>
  
  
  <script src="{{url('assets/mobile-nav/mobile-nav.js')}}"></script>
  <script src="{{url('assets/wow/wow.min.js')}}"></script>
  <script src="{{url('assets/waypoints/waypoints.min.js')}}"></script>
  <script src="{{url('assets/counterup/counterup.min.js')}}"></script>
  <script src="{{url('assets/owlcarousel/owl.carousel.min.js')}}"></script>
  <script src="{{url('assets/isotope/isotope.pkgd.min.js')}}"></script>
  <script src="{{url('assets/lightbox/js/lightbox.min.js')}}"></script>
  <!-- Contact Form JavaScript File -->
  <script src="{{url('js/deporco.blade.contactform.js')}}"></script>
  
  <!-- Template Main Javascript File -->
  <script src="{{url('js/deporco.blade.js')}}"></script>

</body>
</html>
