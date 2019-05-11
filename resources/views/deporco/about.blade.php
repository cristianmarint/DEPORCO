@extends('layouts.deporco')
@section('title','Conocenos')
@section('content')
<section id="about" class="mt-5">

        <div class="container">
          <div class="row">
  
            <div class="col-lg-5 col-md-6">
              <div class="about-img">
                <img  class="img-fluid" src="{{url('storage/storage/app/about.svg')}}">
              </div>
            </div>
  
            <div class="col-lg-7 col-md-6">
              <div class="about-content">
                <h2>Conocenos</h2>
                <h3>Ayudar es nuestro vocación</h3>
                <p>
                    Nacimos en el 2017 como una plataforma que facilita la gestión de torneos y ligas de futbol,baloncesto y voleibol. Desde entonces hemos estado 
                    evolucionando y creciendo en los servicios que ofrecemos a nuestros clientes de forma diaria.
                </p>
                <p>
                    Realmente esperamos que nuestros servicios te sean de utilidad y permitan que todos compartamos los mejores momentos.
                </p>
              </div>
            </div>
          </div>
        </div>
</section>

<section id="services" class="section-bg">
    <div class="container">

      <header class="section-header">
        <h3>Servicios</h3>
        <p>Nuestos servicios tan cerca como es posible</p>
      </header>

      <div class="row">

        <div class="col-md-6 col-lg-4 wow bounceInUp" data-wow-duration="1.4s">
          <div class="box">
            <div class="icon" style="background: #fceef3;"><i class="ion-pull-request" style="color: #ff689b;"></i></div>
            <h4 class="title"><a href="#">Torneos</a></h4>
            <p class="description">Gestión y planificacion de torneos</p>
          </div>
        </div>
        <div class="col-md-6 col-lg-4 wow bounceInUp" data-wow-duration="1.4s">
          <div class="box">
            <div class="icon" style="background: #fff0da;"><i class="ion-merge" style="color: #e98e06;"></i></div>
            <h4 class="title"><a href="#">Ligas</a></h4>
            <p class="description">Gestión y planificacion de ligas</p>
          </div>
        </div>

        <div class="col-md-6 col-lg-4 wow bounceInUp" data-wow-delay="0.1s" data-wow-duration="1.4s">
          <div class="box">
            <div class="icon" style="background: #e6fdfc;"><i class="ion-ios-paper-outline" style="color: #3fcdc7;"></i></div>
            <h4 class="title"><a href="#">Estadisticas</a></h4>
            <p class="description">Visializa como avanza una competencia</p>
          </div>
        </div>
        <div class="col-md-6 col-lg-4 wow bounceInUp" data-wow-delay="0.1s" data-wow-duration="1.4s">
          <div class="box">
            <div class="icon" style="background: #eafde7;"><i class="ion-android-archive" style="color:#41cf2e;"></i></div>
            <h4 class="title"><a href="#">Informes</a></h4>
            <p class="description">Generamos informes utiles y valiosos</p>
          </div>
        </div>

        <div class="col-md-6 col-lg-4 wow bounceInUp" data-wow-delay="0.2s" data-wow-duration="1.4s">
          <div class="box">
            <div class="icon" style="background: #e1eeff;"><i class="ion-android-people" style="color: #2282ff;"></i></div>
            <h4 class="title"><a href="#">Convocatorias</a></h4>
            <p class="description">Agiliza tus procesos de registro de jugadores</p>
          </div>
        </div>
        <div class="col-md-6 col-lg-4 wow bounceInUp" data-wow-delay="0.2s" data-wow-duration="1.4s">
          <div class="box">
            <div class="icon" style="background: #ecebff;"><i class="ion-trophy" style="color: #8660fe;"></i></div>
            <h4 class="title"><a href="#">Premiación</a></h4>
            <p class="description">Conoce rapidamente quienes son los mejores</p>
          </div>
        </div>

      </div>

    </div>
  </section>
@endsection