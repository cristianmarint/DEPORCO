<?php
  include '../pages/ConnectionDB.php';
  if(!$conexion){
    echo "Error: No se pudo conectar a MySQL". PHP_EOL;
    echo "errno de depuración: " . mysqli_connect_errno() . PHP_EOL;
    exit;
  }else{
    if(isset($_REQUEST['usuario']) && isset($_REQUEST['clave'])){
      //el mysqli_real_escape_string evita las inyecciones SQL es decir codigo intruso para vulneravilidades
      $user = mysqli_real_escape_string($conexion, $_POST['usuario']);//almacena el usuario
      $pass = mysqli_real_escape_string($conexion, $_POST['clave']);//almacena la contrasena

      $sql = "SELECT id_usuario, user,pass, nombre, apellido,privilegio FROM informacion_usuarios
              WHERE user = '$user'";

      //hace la consulta y almacena el resultado
      $result = mysqli_query($conexion, $sql);
            
      //sacamos el numero de filas de result
      $num_row = mysqli_num_rows($result);
      
      //arreglo  almacena toda la informacion de la consulta
      $arreglo = mysqli_fetch_array($result);
     
      //password_verify compara el hash anterior guardado en la base de datos con la contraseña ingresada
      if(password_verify($pass, $arreglo['pass']) ){

      // para pruebas sin login cifrado usar:   if($num_row == "1"){ asi no compara el hash con la contraseña ingresada
        // if($num_row == "1"){
        $mensaje           = "Bienvenido'";
        $data['validacion']= 'admin';
        $data['mensaje']     = $mensaje;
        session_start();
        $_SESSION['HORALOGIN']=time();
        $_SESSION["AUTENTICA"] = "SI";
        $_SESSION["USUARIO_NOMBRE"] = $arreglo['nombre']." ".$arreglo['apellido'];
        $_SESSION["USUARIO_ID"] = $arreglo['id_usuario'];
        $_SESSION["USUARIO_PRIVILEGIO"] = $arreglo['privilegio'];
      }else{
        $mensaje = "El usuario o Clave son incorrectos";
        $data['validacion'] = 'fail';
        $data['mensaje'] = $mensaje;
        $_SESSION["AUTENTICA"] = "NO";
      }
    }else {
        echo "error: no se encontraron filas.";
    }
  }


    echo json_encode($data);
  ###################
?>
