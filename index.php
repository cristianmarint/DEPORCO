<!-- is only a test, no more -->

<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Deportes Cotecnova</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- <meta name="robots" content="all,follow"> -->
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- Custom stylesheet-->
    <link rel="stylesheet" href="css/index/index.css">
    <!-- sweetalert -->
    <link rel="stylesheet" href="pluggins/sweetalert/dist/sweetalert.css">
    <!-- Favicon-->
    <link rel="icon" type="image/png" href="img/favicon/cotecnova.png">
  </head>

  <body style="background-image: url('img/fondo2.jpg');">
    <div class="inicio">

      <form class="form-horizontal contenedor">
        <fieldset>
          <div class="text-center col-sm-10">
            <legend class="">BIENVENIDO</legend>
          </div>

          <div class="form-group">
            <label for="LoginUser" class="control-label col-sm-2">Usuario</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" id="LoginUser" placeholder="Nombre de usuario" required="">
              <p class="help-block">Ingrese su usuario sin espacios</p>
            </div>
          </div>

          <div class="form-group">
            <label for="LoginPassword" class="control-label col-sm-2">Contrase&ntilde;a</label>
            <div class="col-sm-10">
              <input type="password" class="form-control" id="LoginPassword" placeholder="Contraseña" required="">
              <p class="help-block">Ingrese la contraseña sin espacios</p>
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-2" for="ingresar"></label>
            <div class="text-center col-sm-10">
              <button type="button" id="Login" name="ingresar" class="btn btn-outline-light " aria-label="">Iniciar Sesión</button>
            </div>
          </div>

        </fieldset>
      </form>
    </div>

    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="pluggins/sweetalert/dist/sweetalert.min.js"></script>
    <script src="session/session.js"></script>
  </body>
</html>
