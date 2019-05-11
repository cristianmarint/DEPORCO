<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>{{ config('app.name') }} @yield('title')</title>
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
            <li class="{{Request::is('welcome') ? 'active': ''}}"><a href="{{route('deporco.welcome')}}">Inicio</a></li>
            <li class="{{Request::is('about') ? 'active': ''}}"><a href="{{route('deporco.about')}}">Conocenos</a></li>
            <li class="{{Request::is('contact') ? 'active': ''}}"><a href="{{route('deporco.contact')}}">Contactanos</a></li>
            <li class="{{Request::is('media') ? 'active': ''}}"><a href="{{route('deporco.media')}}">Prensa</a></li>
            <li class="{{Request::is('terms') ? 'active': ''}}"><a href="{{route('deporco.terms')}}#TerminosYCondiciones">Terminos Y Condiciones</a></li>
            <li class="{{Request::is('terms') ? 'active': ''}}"><a href="{{route('deporco.terms')}}#PoliticaDePrivacidad">Politica De Privacidad</a></li>
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
    @yield('content')
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
