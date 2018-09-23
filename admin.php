<?php session_start();
  include 'session/security.php';
 ?>


<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Deportes Cotecnova</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- SweetAlert -->
    <link rel="stylesheet" href="pluggins/sweetalert/dist/sweetalert.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.sea.css" id="theme-stylesheet">
    <!-- data tables -->
    <link rel="stylesheet" href="dataTables/jquery.dataTables.min.css">
    <link rel="stylesheet" href="dataTables/dataTables.bootstrap4.min.css">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="icon" type="image/png" href="img/favicon/cotecnova.png">
  </head>
  <body>
    <!-- LOADER -->
     <!-- <div id="preloader">
        <img class="preloader" src="img/loading-page/football_loader.gif" alt="">
     </div> -->

    <div class="page">
      <!-- Main Navbar-->
      <header class="header">
        <nav class="navbar">
          <!-- Search Box-->
          <div class="search-box">
            <button class="dismiss"><i class="icon-close"></i></button>
            <form id="searchForm" action="#" role="search">
              <input type="search" placeholder="¿Qu&eacute; est&aacute;s buscando?" class="form-control">
            </form>
          </div>
          <div class="container-fluid">
            <div class="navbar-holder d-flex align-items-center justify-content-between">
              <!-- Navbar Header-->
              <div class="navbar-header">
                <!-- Navbar Brand --><a href="admin.php" class="navbar-brand d-none d-sm-inline-block">
                  <div class="brand-text d-none d-lg-inline-block"><span>Deportes </span><strong>Cotecnova</strong></div>
                  <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>DC</strong></div></a>
                <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
              </div>
              <!-- Navbar Menu -->
              <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                <!-- Search-->
                <li class="nav-item d-flex align-items-center"><a id="search" href="#"><i class="icon-search"></i></a></li>
                <!-- Notifications-->
                <li class="nav-item dropdown"> <a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-bell-o"></i><span class="badge bg-red badge-corner">12</span></a>
                  <ul aria-labelledby="notifications" class="dropdown-menu">
                    <li><a rel="nofollow" href="#" class="dropdown-item">
                        <div class="notification">
                          <div class="notification-content"><i class="fa fa-envelope bg-green"></i>You have 6 new messages </div>
                          <div class="notification-time"><small>4 minutes ago</small></div>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item">
                        <div class="notification">
                          <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
                          <div class="notification-time"><small>4 minutes ago</small></div>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item">
                        <div class="notification">
                          <div class="notification-content"><i class="fa fa-upload bg-orange"></i>Server Rebooted</div>
                          <div class="notification-time"><small>4 minutes ago</small></div>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item">
                        <div class="notification">
                          <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
                          <div class="notification-time"><small>10 minutes ago</small></div>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>view all notifications                                            </strong></a></li>
                  </ul>
                </li>
                <!-- Messages                        -->
                <li class="nav-item dropdown"> <a id="messages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-envelope-o"></i><span class="badge bg-orange badge-corner">10</span></a>
                  <ul aria-labelledby="notifications" class="dropdown-menu">
                    <li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                        <div class="msg-profile"> <img src="img/fondo2.jpg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="msg-body">
                          <h3 class="h5">Jason Doe</h3><span>Sent You Message</span>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                        <div class="msg-profile"> <img src="img/fondo2.jpg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="msg-body">
                          <h3 class="h5">Frank Williams</h3><span>Sent You Message</span>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                        <div class="msg-profile"> <img src="img/fondo2.jpg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="msg-body">
                          <h3 class="h5">Ashley Wood</h3><span>Sent You Message</span>
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
                        <a href="#ChangePasswordModal" data-toggle="modal" data-target="#ChangePasswordModal" class="dropdown-item" ><i class="fa fa-user fa-fw"></i> Cambiar contraseña</a>
                        <a href="#" class="dropdown-item"><i class="fa fa-gear fa-fw"></i> Configuraciones</a>
                        <a href="session/exit.php" class="dropdown-item"><i class="fa fa-sign-out fa-fw"></i> Cerrar Sesi&oacute;n</a>
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
            <div class="avatar"><img src="img/favicon/cotecnova.png" alt="..." class="img-fluid rounded-circle"></div>
            <div class="title">
              <h1 class="h4">
                <?php
                  echo $_SESSION["USUARIO_NOMBRE"];
                 ?>
              </h1>
              <p>
                <?php
                  echo $_SESSION["USUARIO_PRIVILEGIO"];
                ?>
              </p>
            </div>
          </div>
          <!-- Sidebar Navidation Menus--><span class="heading">Menú</span>
          <ul class="list-unstyled">
            <li class="active"><a href="admin.php"> <i class="icon-home"></i>Inicio </a></li>
            <li><a class="links" id="link_institution"> <i class="icon-pencil-case"></i>Institucion (es)</a></li>
            <li><a class="links"> <i class="icon-new-file"></i>Equipo (s)</a></li>
            <li><a class="links" id="link_jugador"> <i class="icon-new-file"></i>Jugador (s)</a></li>
            <li><a class="links"> <i class="icon-new-file"></i>Temporada</a></li>
            <li><a class="links"> <i class="icon-new-file"></i>Categoria</a></li>
            <li><a class="links"> <i class="icon-new-file"></i>Torneo</a></li>
            <li><a class="links"> <i class="icon-new-file"></i>Lugar</a></li>

            <li><a href="#menu_inscripciones" aria-expanded="false" data-toggle="collapse"> <i class="icon-padnote"></i>Inscripcion</a>
             <ul id="menu_inscripciones" class="collapse list-unstyled ">
               <li><a class="links">Jugadores</a></li>
               <li><a class="links">Equipos</a></li>
             </ul>
           </li>
            <li><a class="links"> <i class="fa fa-calendar-plus-o"></i>Calendario</a></li>
            <li><a class="links"> <i class="fa fa-sitemap"></i>Resultados</a></li>

          </ul><span class="heading">Extras</span>
          <ul class="list-unstyled">
            <li> <a href="#"> <i class="icon-flask"></i>Demo </a></li>
            <li> <a href="#"> <i class="icon-screen"></i>Demo </a></li>
            <li> <a href="#"> <i class="icon-mail"></i>Demo </a></li>
            <li> <a href="#"> <i class="icon-picture"></i>Demo </a></li>
          </ul>
        </nav>

        <div class="content-inner">
          <div id="Principal">
              <div id="page-wrapper"> <!-- Div de carga de contenido asincrono -->
                <!-- Page Header-->
                <header class="page-header">
                  <div class="container-fluid">
                    <h2 class="no-margin-bottom">Inicio</h2>
                  </div>
                </header>
                <!-- Dashboard Counts Section-->
                <section class="dashboard-counts no-padding-bottom">
                  <div class="container-fluid">
                    <div class="row bg-white has-shadow">
                      <p>
                        Algo de información
                      </p>
                    </div>
                  </div>
                </section>
              </div>
          </div>

          <!-- Page Footer-->
          <footer class="main-footer">
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
                <iframe style="display:none;" name="PassWordRelleno"></iframe>
                <form target="PassWordRelleno" method="post" name="ChangePassword" id="ChangePassword">
                  <input type="hidden" name="id_user" id="id_user" value="<?php echo $_SESSION["USUARIO_ID"]; ?>" >
                  <div class="form-group-material">
                    <input id="ChangePassword1" type="password" name="ChangePassword1" required class="input-material">
                    <label for="ChangePassword1" class="label-material">Nueva contraseña</label>
                  </div>
                  <div class="form-group-material">
                    <input id="ChangePassword2" type="password" name="ChangePassword2" required class="input-material">
                    <label for="ChangePassword2" class="label-material">Repita la contraseña </label>
                  </div>
              </div>
              <div class="modal-footer">
                <button type="reset" style="display:none;" id="ChangePasswordClearForm"></button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal" id="ChangePasswordClose">Cerrar</button>
                <button type="button" class="btn btn-primary" id="SaveChangePassword">Guardar</button>
              </div>
                </form>
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
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="pluggins/sweetalert/dist/sweetalert.min.js"> </script>
    <!-- <script src="vendor/chart.js/Chart.min.js"></script> -->
    <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
    <!-- <script src="js/charts-home.js"></script> -->
    <script src="dataTables/jquery.dataTables.min.js"></script>
    <script src="dataTables/dataTables.bootstrap4.min.js"></script>

    <!-- Main File-->
    <script src="js/front.js"></script>
    <script src="js/custom.js"></script>
  </body>
</html>
