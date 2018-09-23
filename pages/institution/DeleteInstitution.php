<?php
  require_once '../ConnectionDB.php';
  foreach ($_REQUEST as $var => $val){$$var =  $val;} //obtener todos los datos provenientes del formulario

  $sql = "UPDATE instituto SET estado = 'inactivo'
          WHERE nit = '$nit'";

  $result = mysqli_query($conexion, $sql);
  
  if($result){
    $data['result'] = 'ok';
  }else{
    $data['result'] = 'error';
  }


  echo json_encode($data);
 ?>
