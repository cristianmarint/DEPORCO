{{-- 
/*
 * @Author: EdwinLopez12 
 * @Date: 2019-05-15 13:02:03 
 * @Last Modified by: CristianMarinT
 * @Last Modified time: 2019-05-15 14:49:52
 */ 
 --}}
<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>{{ config('app.name') }} @yield('title')</title>
    <meta name="description" content="Gestionador de torneo,futbol,voleibol,ping pong">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">

    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="{{url('assets/bootstrap/css/bootstrap.min.css')}}">

    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="{{url('assets/fontawesome-5.8.1/css/solid.css')}}">
    <link rel="stylesheet" href="{{url('assets/fontawesome-5.8.1/css/brands.css')}}">
    <link rel="stylesheet" href="{{url('assets/fontawesome-5.8.1/css/regular.css')}}">
    <link rel="stylesheet" href="{{url('assets/fontawesome-5.8.1/css/fontawesome.min.css')}}">

    <!-- SweetAlert -->
    <link rel="stylesheet" href="{{url('assets/sweetalert/dist/sweetalert.css')}}">

    <!-- orion icons-->
    <link rel="stylesheet" href="{{url('css/admin/orionicons.css')}}">

    <!-- Admin CSS -->
    <link rel="stylesheet" href="{{url('css/admin/tema-azul.css')}}">


    <!-- Google fonts - Montserrat -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:300,400,700">


    <!-- data tables -->
    {{-- <link rel="stylesheet" href="{{url('assets/dataTables/jquery.dataTables.min.css')}}"> --}}
    <link rel="stylesheet" href="{{url('assets/dataTables/dataTables.bootstrap4.min.css')}}">

    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="{{url('css/custom.css')}}">
</head>
<body>
    <div class="page">
        <header class="header">
        <nav class="navbar navbar-expand-lg px-4 py-2 bg-white shadow">
            <a href="#" class="sidebar-toggler text-gray-500 mr-4 mr-lg-5 lead"><i class="fas fa-align-left"></i></a>
            <a href="{{route('deporco.welcome')}}" class="navbar-brand font-weight-bold text-uppercase text-base active" ><strong> {{config('app.name')}} </strong> </a>
                <ul class="ml-auto d-flex align-items-center list-unstyled mb-0">
                    {{-- <li class="nav-item">
                        <!-- search form-->
                        <form id="searchForm" class="ml-auto d-none d-lg-block">
                            <div class="form-group position-relative mb-0">
                                <button type="submit" style="top: -3px; left: 0;" class="position-absolute bg-white border-0 p-0"><i class="o-search-magnify-1 text-gray text-lg"></i></button>
                                <input type="search" placeholder="¿Qu&eacute; est&aacute;s buscando?" class="form-control form-control-sm border-0 no-shadow pl-4">
                            </div>
                        </form>
                    </li> --}}
                    <li class="nav-item dropdown mr-3"><a id="notifications" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle text-gray-400 px-1"><i class="fa fa-bell"></i><span class="notification-icon"></span></a>
                        <div aria-labelledby="notifications" class="dropdown-menu"><a href="#" class="dropdown-item">

                                <div class="d-flex align-items-center">
                                    <div class="icon icon-sm bg-green text-white"><i class="fas fa-envelope"></i></div>
                                    <div class="text ml-2">
                                        <p class="mb-0">Tienes 6 nuevos mensajes</p>
                                    </div>
                                </div></a><a href="#" class="dropdown-item">

                                <div class="d-flex align-items-center">
                                    <div class="icon icon-sm bg-blue text-white"><i class="fas fa-upload"></i></div>
                                    <div class="text ml-2">
                                        <p class="mb-0">Server rebooted</p>
                                    </div>
                                </div></a>
                            <div class="dropdown-divider"></div><a href="#" class="dropdown-item text-center"><small class="font-weight-bold headings-font-family text-uppercase">Ver todas las notificaciones</small></a>
                        </div>

                    </li>
                    <li class="nav-item dropdown ml-auto"><a id="userInfo" href="userinfo" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle"><img src="@if( isset(Auth::user()->datos_basicos->foto) ){{ Auth::user()->datos_basicos->foto }}@else @if ( Auth::user()->avatar) {{ Auth::user()->avatar}} @else {{ asset('/storage/storage/img/favicon/cotecnova.png') }} @endif @endif" alt="{{Auth::user()->datos_basicos->primer_nombre}}" style="max-width: 2.5rem;" class="img-fluid rounded-circle shadow"></a>
                        <div aria-labelledby="userInfo" class="dropdown-menu"><a href="#" class="dropdown-item"><strong class="d-block text-uppercase headings-font-family">{{Auth::user()->datos_basicos->primer_nombre}} {{Auth::user()->datos_basicos->primer_apellido}}</strong><small>{{ Auth::user()->role->display_name }}</small></a>
                            <div class="dropdown-divider"></div>
                                <a href="#" class="dropdown-item">Settings</a>
                                @if (Auth::user()->hasRole('admin'))
                                    <a href="{{ url('admin') }}" class="dropdown-item">Administraci&oacute;n</a>
                                @endif

                            <div class="dropdown-divider"></div><a href="" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" class="dropdown-item">Logout</a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                        </div>
                    </li>

                </ul>
            </nav>
        </header>

        <div class="d-flex align-items-stretch">
            <div id="sidebar" class="sidebar py-3">
                <div class="text-gray-400 text-uppercase px-3 px-lg-4 py-4 font-weight-bold small headings-font-family">FUTBOL</div>
                <ul class="sidebar-menu list-unstyled">

                    <li class="sidebar-list-item "><a href="{{url('/home')}}"           class="sidebar-link text-muted {{Request::is('home') ? 'active': ''}}"><i class="fas fa-home mr-3 text-gray"></i><span>Inicio</span></a></li>

                    <li class="sidebar-list-item "><a href="{{url('/enfrentamientos')}}"class="sidebar-link text-muted {{Request::is('enfrentamientos') ? 'active': ''}} {{Request::is('enfrentamientos/*') ? 'active': ''}}"><i class="fas fa-puzzle-piece mr-3 text-gray"></i><span>Enfrentamientos</span></a></li>

                    <li class="sidebar-list-item "><a href="{{url('/institutos')}}"     class="sidebar-link text-muted {{Request::is('institutos') ? 'active': ''}} {{Request::is('institutos/*') ? 'active': ''}}"><i class="fas fa-landmark fa-md mr-3 text-gray"></i><span>Instituciones</span></a></li>

                    <li class="sidebar-list-item "><a href="{{url('/datosbasicos')}}"   class="sidebar-link text-muted {{Request::is('datosbasicos') ? 'active': ''}} {{ Request::is('datosbasicos/*') ? 'active': ''}}"><i class="fas fa-address-card mr-3 text-gray"></i><span>Datos Basicos</span></a></li>

                    <li class="sidebar-list-item "><a href="{{url('/equipos')}}"        class="sidebar-link text-muted {{Request::is('equipos') ? 'active': ''}} {{Request::is('equipos/*') ? 'active': ''}}"><i class="fas fa-user-friends mr-3 text-gray"></i><span>Equipos</span></a></li>

                    <li class="sidebar-list-item "><a href="{{url('/lugares')}}"        class="sidebar-link text-muted {{Request::is('lugares') ? 'active': ''}} {{Request::is('lugares/*') ? 'active': ''}}"><i class="fas fa-map-marked-alt mr-3 text-gray"></i><span>Lugares</span></a></li>

                    <li class="sidebar-list-item "><a href="{{url('/categorias')}}"     class="sidebar-link text-muted {{Request::is('categorias') ? 'active': ''}} {{Request::is('categorias/*') ? 'active': ''}}"><i class="fas fa-sort-amount-up mr-3 text-gray"></i><span>Categorias</span></a></li>

                    <li class="sidebar-list-item "><a href="{{url('/torneos')}}"        class="sidebar-link text-muted {{Request::is('torneos') ? 'active': ''}} {{Request::is('torneos/*') ? 'active': ''}}"><i class="fas fa-trophy mr-3 text-gray"></i><span>Torneos</span></a></li>

                    <li class="sidebar-list-item "><a href="{{url('/temporadas')}}"     class="sidebar-link text-muted {{Request::is('temporadas') ? 'active': ''}} {{Request::is('temporadas/*') ? 'active': ''}}"><i class="fas fa-calendar-check mr-3 text-gray"></i><span>Temporadas</span></a></li>

                    <li class="sidebar-list-item "><a href="{{url('/calendarios')}}"    class="sidebar-link text-muted {{Request::is('calendarios') ? 'active': ''}} {{Request::is('calendarios/*') ? 'active': ''}}"><i class="fas fa-calendar-week mr-3 text-gray"></i><span>Calendario</span></a></li>

                </ul>
            </div>
            <div class="page-holder w-100 d-flex flex-wrap">
                <div class="container-fluid px-xl-5">
                    <section class="py-5">
                        <div class="row">
                            <div class="col-xl-4 col-lg-6 mb-4 mb-xl-0">
                                <div class="bg-white shadow roundy p-4 h-100 d-flex align-items-center justify-content-between">
                                    <div class="flex-grow-1 d-flex align-items-center">
                                        <div class="dot mr-3 bg-violet"></div>
                                        <div class="text">
                                            <h6 class="mb-0">Futbol</h6>
                                            <span class="text-gray">Activos</span>
                                            <span class="text-gray">10</span>
                                        </div>
                                    </div>
                                    <div class="icon text-white bg-violet"><i class="fas fa-server"></i></div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-6 mb-4 mb-xl-0">
                                <div class="bg-white shadow roundy p-4 h-100 d-flex align-items-center justify-content-between">
                                    <div class="flex-grow-1 d-flex align-items-center">
                                        <div class="dot mr-3 bg-green"></div>
                                        <div class="text">
                                            <h6 class="mb-0">Baloncesto</h6>
                                        </div>
                                    </div>
                                    <div class="icon text-white bg-green"><i class="far fa-clipboard"></i></div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-6 mb-4 mb-xl-0">
                                <div class="bg-white shadow roundy p-4 h-100 d-flex align-items-center justify-content-between">
                                    <div class="flex-grow-1 d-flex align-items-center">
                                        <div class="dot mr-3 bg-blue"></div>
                                        <div class="text">
                                            <h6 class="mb-0">Voleibol</h6>
                                        </div>
                                    </div>
                                    <div class="icon text-white bg-blue"><i class="fa fa-dolly-flatbed"></i></div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <div class="col-lg-12 mb-4">
                            <div class="card">
                                <div class="card-header">
                                    <h6 class="text-uppercase mb-0 text-center">@yield('title')</h6>
                                </div>
                                @yield('content')
                            </div>
                    </div>

                </div>


                <footer class="footer bg-white shadow align-self-end py-3 px-xl-5 w-100">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6 text-center text-md-left text-primary">
                                <p>2017-2019 &copy; <a href="https://github.com/EdwinLopez12"><img src="{{url('/logo_inicial.svg')}}" width="2%" height="auto" style="transform: rotate(90deg);">dwin Lopez</a> & <a href="https://github.com/CristianMarinT">Cristian <img src="{{url('/logo_inicial.svg')}}" width="2%" height="auto" style="transform: rotate(180deg);">arín</a></p>
                            </div>
                            <div class="col-md-6 text-center text-md-right text-gray-400">
                                <p class="mb-0">Bootstrapious</a></p>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>

    </div>


    <!-- JavaScript files-->
    <script src="{{url('assets/jquery/jquery.min.js')}}"></script>
    <script src="{{url('assets/popper.js/umd/popper.min.js')}}"> </script>
    <script src="{{url('assets/bootstrap/js/bootstrap.min.js')}}"></script>
    <script src="{{url('assets/jquery.cookie/jquery.cookie.js')}}"> </script>
    <script src="{{url('assets/sweetalert/dist/sweetalert.min.js')}}"> </script>
    <script src="{{url('assets/chart.js/Chart.min.js')}}"></script>
    {{--<script src="../vendor/jquery-validation/jquery.validate.min.js"></script>--}}
    <script src="{{url('assets/dataTables/jquery.dataTables.min.js')}}"></script>
    <script src="{{url('assets/dataTables/dataTables.bootstrap4.min.js')}}"></script>

    {{--<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>--}}
    <!-- Main File-->
    <script src="{{url('js/front.js')}}"></script>
    <script src="{{url('js/custom.js')}}"></script>

    <script>
        $('#ChangePasswordModal').on('show.bs.modal', function () {
            setTimeout(function(){
                $('#update_password').focus();
            }, 500);
        });

        $('#closeModal').on("click", function () {
            $('#ChangePasswordClearForm').click();
            var nueva_clave = $('#nueva_clave');
            var confirmar_clave = $('#confirmar_clave');
            if($(nueva_clave).hasClass('is-invalid') || $(confirmar_clave).hasClass('is-invalid')){
                $(nueva_clave).removeClass('is-invalid'); $(confirmar_clave).removeClass('is-invalid');
            }
        });

       $('#savePassword').on('click', function () {
            var id = $('#id').val();
            var nueva_clave = $('#nueva_clave').val();
            var confirmar_clave= $('#confirmar_clave').val();

           $.ajax({
               url:"/changePassword/"+id,
               method:"POST",
               dataType: 'json',
               data:{
                   "_token": "{{ csrf_token() }}",
                   "id" : id,
                   "nueva_clave": nueva_clave,
                   "confirmar_clave" : confirmar_clave
               }, beforeSend: function () {
                   timeSleep(" ", "Procensando cambios...", "warning", 500);
               },
               error:function(msj){

                   // console.log(msj.responseJSON.errors);
                   timeSleep("Campos vacios o invalidos", "Corrige o completa el formulario", "info", 1000);

                   $.each(msj.responseJSON.errors, function(key, value){ //array de errores
                       var inputfinal = "#"+key;
                       $(inputfinal).addClass('is-invalid');
                       var errorfinal = "#"+key+"_error";
                       $(errorfinal).text(value);
                       // console.log(key+ " - " + value);
                   });
               },
           }).done(function(data){
               // console.log(data);
               if(data.result == 'success'){
                   setTimeout(function(){
                       swal({
                               title: " ",
                               text: "Cambios guardados con exito con exito",
                               type: "success",
                               confirmButtonText: "OK",
                               closeOnConfirm: true },
                           function(){
                               $('#ChangePasswordClearForm').click();
                               $('#ChangePasswordModal').modal('hide');
                           });
                   }, 1000);

               }else{
                   setTimeout(function(){
                       swal({
                               title: " ",
                               text: "Algo ha salido mal, prueba nuevamente",
                               type: "error",
                               confirmButtonText: "OK",
                               closeOnConfirm: true },
                           function(){
                               $('#ChangePasswordClearForm').click();
                           });
                   }, 1000);
               }
           });
       });

       function timeSleep(title, text, type, time) {
           setTimeout(function(){
                swal(title,text,type);
           }, time);
       }
    </script>

    <!-- Yield para scripts -->
    @yield('scripts')
</body>
</html>

