<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Deportes Cotecnova @yield('title')</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="{{url('assets/bootstrap/css/bootstrap.min.css')}}">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="{{url('assets/font-awesome/css/font-awesome.min.css')}}">
    <!-- SweetAlert -->
    <link rel="stylesheet" href="{{url('assets/sweetalert/dist/sweetalert.css')}}">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="{{url('css/style.sea.css')}}" id="theme-stylesheet">
    <!-- data tables -->
    <link rel="stylesheet" href="{{url('assets/dataTables/jquery.dataTables.min.css')}}">
    <link rel="stylesheet" href="{{url('assets/dataTables/dataTables.bootstrap4.min.css')}}">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="{{url('css/custom.css')}}">
    <!-- Favicon-->
    <link rel="icon" type="image/png" href="{{url('img/favicon/cotecnova.png')}}">
</head>
<body>
    {{-- <!-- LOADER --> --}}
    {{-- <div id="preloader">
           <img class="preloader" src="{{ url('img/Loading-Page/football_loader.gif') }}" alt="">
    </div> --}}

    <div class="page">
        <!-- Main Navbar-->
        <header class="header">
            <nav class="navbar">
                <!-- Search Box-->
                <div class="search-box">
                    <button class="dismiss"><i class="fa fa-times"></i></button>
                    <form id="searchForm" action="#" role="search">
                        <input type="search" placeholder="¿Qu&eacute; est&aacute;s buscando?" class="form-control">
                    </form>
                </div>
                <div class="container-fluid">
                    <div class="navbar-holder d-flex align-items-center justify-content-between">
                        <!-- Navbar Header-->
                        <div class="navbar-header">
                            <!-- Navbar Brand --><a href="{{url('/')}}" class="navbar-brand d-none d-sm-inline-block">
                                <div class="brand-text d-none d-lg-inline-block"><span>Deportes </span><strong> Cotecnova</strong></div>
                                <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>DC</strong></div></a>
                            <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
                        </div>
                        <!-- Navbar Menu -->
                        <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                            <!-- Search-->
                            <li class="nav-item d-flex align-items-center"><a id="search" href="#"><i class="fa fa-search"></i></a></li>
                            <!-- Notifications-->
                            <li class="nav-item dropdown"> <a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-bell-o"></i><span class="badge bg-red badge-corner">1</span></a>
                                <ul aria-labelledby="notifications" class="dropdown-menu">
                                    <li><a rel="nofollow" href="#" class="dropdown-item">
                                            <div class="notification">
                                                <div class="notification-content"><i class="fa fa-envelope bg-green"></i>You have 6 new messages </div>
                                                <div class="notification-time"><small>4 minutes ago</small></div>
                                            </div></a></li>
                                    <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>view all notifications                                            </strong></a></li>
                                </ul>
                            </li>
                            <!-- Messages                        -->
                            <li class="nav-item dropdown"> <a id="messages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-envelope-o"></i><span class="badge bg-orange badge-corner">1</span></a>
                                <ul aria-labelledby="notifications" class="dropdown-menu">
                                    <li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                                            <div class="msg-profile"> <img src="#" alt="..." class="img-fluid rounded-circle"></div>
                                            <div class="msg-body">
                                                <h3 class="h5">Jason Doe</h3><span>Sent You Message</span>
                                            </div></a></li>
                                    <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>Read all messages   </strong></a></li>
                                </ul>
                            </li>

                            <!-- Logout    -->
                            <li class="nav-item dropdown nav-link">
                                <a class="dropdown" data-toggle="dropdown" href="#">
                                    <i class="fa fa-user fa-fw"></i><i class="fa fa-caret-down"></i>
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                    <a href="#" data-toggle="modal" data-target="#ChangePasswordModal" class="dropdown-item"><i class="fa fa-user fa-fw"></i> Cambiar contraseña</a>
                                    <a href="#" id="link_config" class="dropdown-item links"><i class="fa fa-gear fa-fw"></i> Configuraciones</a>
                                    {{--<a href="#" class="dropdown-item"><i class="fa fa-sign-out fa-fw"></i> Cerrar Sesi&oacute;n</a>--}}

                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        <i class="fa fa-sign-out fa-fw"></i> Cerrar Sesi&oacute;n
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </ul>
                            </li>

                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <div class="page-content d-flex align-items-stretch">
            <!-- Side Navbar -->
            <nav class="side-navbar">
                <!-- Sidebar Header-->
                <div class="sidebar-header d-flex align-items-center">
                    <div class="avatar"><img src="{{url('img/favicon/cotecnova.png')}}" alt="..." class="img-fluid rounded-circle"></div>
                    <div class="title">
                        <h1 class="h4">
                            {{-- {{ Auth::user()->datos_basicos->primer_nombre }} {{ Auth::user()->datos_basicos->primer_apellido }} --}}

                            {{-- DONT JUDGEME --}}
                            {{-- {{ DB::table('users')
                                        ->join('datos_basicos','datos_basicos.id','=','users.id')
                                                ->where('users.id',Auth::user()->id)
                                                ->select('primer_nombre')->get() }}  --}}

                            {{ Auth::user()->name }} 
                        </h1>
                        <p>
                            {{ Auth::user()->role->display_name }}
                        </p>
                    </div>
                </div>
                <!-- Sidebar Navidation Menus--><span class="heading">Menú</span>
                <ul class="list-unstyled">
                    <li class="{{Request::is('home') ? 'active': ''}}"><a href="{{url('/home')}}"> <i class="fa fa-home"></i>Inicio </a></li>

                    <li class="{{Request::is('institutos') ? 'active': ''}} {{Request::is('institutos/*') ? 'active': ''}}"><a href="{{url('/institutos')}}" class="links"> <i class="fa fa-university" aria-hidden="true"></i>Instituciones</a></li>
                    
                    <li class="{{Request::is('datosbasicos') ? 'active': ''}} {{ Request::is('datosbasicos/*') ? 'active': ''}}"><a href="{{url('/datosbasicos')}}" class="links"> <i class="fa fa-address-card"></i>Datos Basicos</a></li>

                    <li class="{{Request::is('equipos') ? 'active': ''}} {{Request::is('equipos/*') ? 'active': ''}}"><a  href="{{url('/equipos')}}" class="links"> <i class="fa fa-shield" aria-hidden="true"></i>Equipos</a></li>
                    
                    <li class="{{Request::is('lugares') ? 'active': ''}} {{Request::is('lugares/*') ? 'active': ''}}"><a href="{{url('/lugares')}}" class="links"> <i class="fa fa-map-marker"></i>Lugares</a></li>
                    
                    <li class="{{Request::is('categorias') ? 'active': ''}} {{Request::is('categorias/*') ? 'active': ''}}"><a href="{{url('/categorias')}}" class="links"> <i class="fa fa-bars"></i>Categorias</a></li>
                    
                    <li class="{{Request::is('torneos') ? 'active': ''}} {{Request::is('torneos/*') ? 'active': ''}}"><a href="{{url('/torneos')}}" class="links"> <i class="fa fa-trophy"></i>Torneos</a></li>
                    
                    <li class="{{Request::is('temporadas') ? 'active': ''}} {{Request::is('temporadas/*') ? 'active': ''}}"><a href="{{url('/temporadas')}}" class="links"> <i class="fa fa-calendar" aria-hidden="true"></i>Temporadas</a></li>



                    {{--<li><a href="#menu_inscripciones" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-edit"></i>Inscripcion</a>--}}
                        {{--<ul id="menu_inscripciones" class="collapse list-unstyled ">--}}
                            {{--<li><a href="{{url('/inscripciones_equipo')}}" class="links"><i class="fa fa-shield"></i> Equipos</a></li>--}}
                        {{--</ul>--}}
                    {{--</li>--}}
                    <li class="{{Request::is('calendarios') ? 'active': ''}} {{Request::is('calendarios/*') ? 'active': ''}}"><a href="{{url('/calendarios')}}" class="links"> <i class="fa fa-calendar-plus-o"></i>Calendario</a></li>
                </ul>
            </nav>

            <div class="content-inner">
                <div > <!-- Div de carga de contenido asincrono -->
                    <!-- Page Header-->
                    <header class="page-header">
                        <div class="container-fluid">
                            <h2 class="no-margin-bottom">@yield('title')</h2>
                        </div>
                    </header>

                    @yield('content')
                </div>

                  <!-- Page Footer-->
                <footer class="main-footer" >
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                                <p>2017-2019 &copy; <a href="https://www.cotecnova.edu.co/">Cotecnova.</a></p>
                            </div>
                            <div class="col-sm-6 text-right">
                                <p>Design by <a href="https://bootstrapious.com/admin-templates" class="external">Bootstrapious</a></p>
                                <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
                            </div>
                        </div>
                    </div>
                </footer>
            </div>


            <!-- Modal password-->
            <div class="modal fade" id="ChangePasswordModal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Cambio de contraseña</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="" method="POST" class="form-horizontal" >

                                <input type="hidden" value="{{Auth::user()->id}}" id="id">

                                <div class="form-group row">
                                    <label for="nueva_clave" class="form-control-label col-sm-4">Nueva Contraseña</label>
                                    <div class="col-sm-8">
                                        <input id="nueva_clave" type="password" name="nueva_clave" class="form-control">
                                            <span class="invalid-feedback" role="alert">
                                                <strong id="nueva_clave_error"> error </strong>
                                            </span>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="confirmar_clave" class="form-control-label col-sm-4 ">Confirme la Contraseña</label>
                                    <div class="col-sm-8">
                                        <input id="confirmar_clave" type="password" name="confirmar_clave" class="form-control">
                                            <span class="invalid-feedback" role="alert">
                                                <strong id="confirmar_clave_error"></strong>
                                            </span>
                                    </div>
                                </div>
                                <button type="reset" style="display:none;" id="ChangePasswordClearForm"></button>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal" id="closeModal">Cerrar</button>
                            <button type="button" class="btn btn-primary" id="savePassword">Guardar</button>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Modal container -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content" id="ContentModal">
                        <div class="modal-header">
                            {{--nombre asincrono--}}
                            <h5 class="modal-title" id="ModalLabel">@yield('modal_title')</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            {{--form asincrono--}}
                            @yield('modal_body')
                        </div>
                        <div class="modal-footer">
                            {{--<button type="reset" class="btn btn-info" id="ClearForm"></button>--}}
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                            {{--boton con id dinamico--}}
                            <button type="button" class="btn btn-primary" id="@yield('buton_name_save')">Guardar</button>
                        </div>
                    </div>
                </div>
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
    @yield('scripts')
</body>
</html>

