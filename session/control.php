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
              WHERE user = '$user' AND pass = '$pass'";

      //hace la consulta y almacena el resultado
      $result = mysqli_query($conexion, $sql);
            
      //sacamos el numero de filas de result
      $num_row = mysqli_num_rows($result);
      
      //fila es un vector que almacena toda la informacion de la consulta
      $fila = mysqli_fetch_array($result);
    
      echo "\n***---***\n\n";
           
      echo "Informacion de usuario:  \n";
      print_r ($fila);

      echo "\n***---***\n\n";
      
      echo "Pass Ingresada: ".$pass."\n";
      echo "Hash: ".$fila['pass']."\n";

      echo "\n***---***\n\n";
     
      echo "Test validacion:\n\n";
      if( password_verify($pass, $fila['pass']) ){
        echo "¡La contraseña es válida! ";
      } else {
        echo "La contraseña no es válida. ";
      }
      echo "\n\n***---***\n\n";



 
      // if($num_row == "1" && password_verify($pass, $hash) ){
      // if($num_row == "1" && strcmp($pass, $fila['pass'] ) === 0 ){
      if($num_row == "1"){
        $mensaje           = "Bienvenido'";
        $data['validacion']= 'admin';
        $data['mensaje']     = $mensaje;
        session_start();
        $_SESSION["AUTENTICA"] = "SI";
        $_SESSION["USUARIO_NOMBRE"] = $fila['nombre']." ".$fila['apellido'];
        $_SESSION["USUARIO_ID"] = $fila['id_usuario'];
        $_SESSION["USUARIO_PRIVILEGIO"] = $fila['privilegio'];
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
