<?php
    include '../ConnectionDB.php';
    $municipio =$_REQUEST['seleccion'];
    $sql = "SELECT id_municipio,  municipio FROM municipios INNER JOIN departamentos ON departamentos.id_departamento = municipios.departamento_id WHERE departamento_id = '$municipio'";
    if($result = mysqli_query($conexion, $sql)){
      echo '<option value="0" >Seleccione un Municipio / Ciudad</option>';
        if(mysqli_num_rows($result) > 0){
            while($row = mysqli_fetch_array($result)){
              ?>
               <option value="<?php echo $row['id_municipio']; ?>"><?php echo utf8_encode($row['municipio']); ?></option>
              <?php
              }
        }
    }
?>
