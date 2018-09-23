<?php
  require_once 'ConnectionDB.php';

foreach ($_REQUEST as $var => $val){$$var =  $val;} //obtener todos los datos provenientes del formulario

  if($ChangePassword1 == $ChangePassword2){

    //encriptacion con PASSWORD_BCRYPT
    //$cifrada = password_hash($ChangePassword1,PASSWORD_BCRYPT);
    $cifrada = password_hash($ChangePassword1,PASSWORD_DEFAULT);

    //$sql = "UPDATE informacion_usuarios SET pass = '$ChangePassword1'
    $sql = "UPDATE informacion_usuarios SET pass = '$cifrada'
            WHERE id_usuario = '$id_user'";

    $result = mysqli_query($conexion, $sql);

    if($result){
      $data['result'] = 'ok';
    }else{
      $data['result'] = 'error';
    }

  }else{
    $data['result'] = 'diferentes';
  }


  echo json_encode($data);
 ?>
