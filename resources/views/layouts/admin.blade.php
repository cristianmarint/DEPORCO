<?php
/**
 * Created by PhpStorm.
 * User: edwin
 * Date: 11/11/2018
 * Time: 12:20 AM
 */

?>

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
    <!-- LOADER -->
    <!--    <div id="preloader">-->
    <!--       <img class="preloader" src="../img/Loading-Page/football_loader.gif" alt="">-->
    <!--    </div>-->

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
                            <!-- Navbar Brand --><a href="#" class="navbar-brand d-none d-sm-inline-block">
                                <div class="brand-text d-none d-lg-inline-block"><span>Deportes </span><strong>Cotecnova</strong></div>
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
                                    <a href="#" data-toggle="modal" data-target="#ChangePasswordModal" class="dropdown-item" ><i class="fa fa-user fa-fw"></i> Cambiar contraseña</a>
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
                            <?php
                            ?>
                                {{ Auth::user()->name }}
                        </h1>
                        <p>
                            Administrador
                            <?php

                            ?>

                        </p>
                    </div>
                </div>
                <!-- Sidebar Navidation Menus--><span class="heading">Menú</span>
                <ul class="list-unstyled">
                    <li class="{{Request::is('admin') ? 'active': ''}}"><a href="{{url('/admin')}}"> <i class="fa fa-home"></i>Inicio </a></li>
                    <li class="{{Request::is('institutos') ? 'active': ''}} {{Request::is('institutos/*') ? 'active': ''}}"><a href="{{url('/institutos')}}" class="links"> <i class="fa fa-university" aria-hidden="true"></i>Institucion (es)</a></li>
                    <li class="{{Request::is('equipos') ? 'active': ''}} {{Request::is('equipos/*') ? 'active': ''}}"><a  href="{{url('/equipos')}}" class="links"> <i class="fa fa-shield" aria-hidden="true"></i>Equipo (s)</a></li>
                    <li class="{{Request::is('temporadas') ? 'active': ''}} {{Request::is('temporadas/*') ? 'active': ''}}"><a href="{{url('/temporadas')}}" class="links"> <i class="fa fa-clock-o" aria-hidden="true"></i>Temporada</a></li>
                    <li class="{{Request::is('categorias') ? 'active': ''}} {{Request::is('categorias/*') ? 'active': ''}}"><a href="{{url('/categorias')}}" class="links"> <i class="fa fa-list"></i>Categoria</a></li>
                    <li class="{{Request::is('torneos') ? 'active': ''}} {{Request::is('torneos/*') ? 'active': ''}}"><a href="{{url('/torneos')}}" class="links"> <i class="fa fa-trophy"></i>Torneo</a></li>
                    {{--<li><a class="links"> <i class="fa fa-globe" aria-hidden="true"></i>Lugar</a></li>--}}

                    <li><a href="#menu_inscripciones" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-edit"></i>Inscripcion</a>
                        <ul id="menu_inscripciones" class="collapse list-unstyled ">
                            <li><a href="{{url('/inscripciones_equipo')}}" class="links"><i class="fa fa-shield"></i> Equipos</a></li>
                        </ul>
                    </li>
                    {{--<li><a class="links"> <i class="fa fa-calendar-plus-o"></i>Calendario</a></li>--}}
                </ul><span class="heading">Eliminados</span>
                <ul class="list-unstyled">
                    <li class="{{Request::is('institutos_delete') ? 'active': ''}} {{Request::is('institutos_delete/*') ? 'active': ''}}"> <a href="{{url('/institutos_delete')}}"> <i class="fa fa-university"></i>Institucion (es) </a></li>
                    <li class="{{Request::is('equipos_delete') ? 'active': ''}} {{Request::is('equipos_delete/*') ? 'active': ''}}"> <a href="{{url('/equipos_delete')}}"> <i class="fa fa-shield"></i>Equipo (s)</a></li>
                    <li class="{{Request::is('temporadas_delete') ? 'active': ''}} {{Request::is('temporadas_delete/*') ? 'active': ''}}"><a href="{{url('/temporadas_delete')}}" class="links"> <i class="fa fa-clock-o" aria-hidden="true"></i>Temporada</a></li>
                    <li class="{{Request::is('categorias_delete') ? 'active': ''}} {{Request::is('categorias_delete/*') ? 'active': ''}}"><a href="{{url('/categorias_delete')}}" class="links"> <i class="fa fa-list"></i>Categoria</a></li>
                    <li class="{{Request::is('torneos_delete') ? 'active': ''}} {{Request::is('torneos_delete/*') ? 'active': ''}}"><a href="{{url('/torneos_delete')}}" class="links"> <i class="fa fa-trophy"></i>Torneo</a></li>
                    <li class="{{Request::is('inscripciones_equipo_delete') ? 'active': ''}} {{Request::is('inscripciones_equipo_delete/*') ? 'active': ''}}"><a href="{{url('/inscripciones_equipo_delete')}}" class="links"> <i class="fa fa-shield"></i>Inscripcion Equipo (s) </a></li>
                </ul>
            </nav>

            <div class="content-inner">
                <div > <!-- Div de carga de contenido asincrono -->
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
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="ModalLabel">Cambio de contraseña</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form target="" method="post" name="ChangePassword" id="ChangePassword">
                                <input type="hidden" name="id_user" id="id_user" value="<?php #echo $_SESSION["USUARIO_ID"]; ?>" >
                                <div class="form-group-material">
                                    <input id="ChangePassword1" type="password" name="ChangePassword1" required class="input-material">
                                    <label for="ChangePassword1" class="label-material">Nueva contraseña</label>
                                </div>
                                <div class="form-group-material">
                                    <input id="ChangePassword2" type="password" name="ChangePassword2" required class="input-material">
                                    <label for="ChangePassword2" class="label-material">Repita la contraseña </label>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="reset" style="display:none;" id="ChangePasswordClearForm"></button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal" id="ChangePasswordClose">Cerrar</button>
                            <button type="button" class="btn btn-primary" id="SaveChangePassword">Guardar</button>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Modal container -->
            <div class="modal fade" id="ModalContainer" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content" id="ContentModal">

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

    <script src="https://cdn.jsdelivr.net/npm/vue"></script>
    <!-- Main File-->
    <script src="{{url('js/front.js')}}"></script>
    <script src="{{url('js/custom.js')}}"></script>

    @yield('scripts')
</body>
</html>

