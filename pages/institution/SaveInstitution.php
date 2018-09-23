<?php
  require_once '../ConnectionDB.php';

foreach ($_REQUEST as $var => $val){$$var =  $val;} //obtener todos los datos provenientes del formulario


  $sql = "INSERT INTO instituto(nit,estado,codigo_dane,nombre_institucion,id_municipio,tipo_de_educacion,direccion,telefono) VALUES ('$AddInstitutionNit','activo','$AddInstitutionDane','$AddInstitutionName','$AddInstitutionCiudad','$AddInstitutionTipoEducacion','$AddInstitutionDireccion','$AddInstitutionTelefono')";

  $result = mysqli_query($conexion, $sql);

  if($result){
    $data['result'] = 'ok';
  }else{
    $data['result'] = 'error';
  }


  echo json_encode($data);
 ?>
