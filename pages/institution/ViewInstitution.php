<?php
  $IdInstitution = $_REQUEST["nit"];


  require_once '../ConnectionDB.php';
  $sql = "SELECT *,municipio,departamento FROM instituto
          INNER JOIN municipios on instituto.id_municipio = municipios.id_municipio
          INNER JOIN departamentos on municipios.departamento_id = departamentos.id_departamento
          WHERE nit = '$IdInstitution'";

  $result = mysqli_query($conexion, $sql);
  $row = mysqli_fetch_array($result);
  //echo $row['estado'];
 ?>

  <div class="modal-header">
    <h5 class="modal-title" id="ModalLabel"><?php echo utf8_encode ($row['nombre_institucion']); ?></h5>
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
  </div>
  <div class="modal-body">
    <div class="form-group-material">
      <input id="InstitucionViewNit" type="text" name="InstitucionViewNit" value="<?php echo $row['nit']; ?>" class="input-material" readonly/>
      <label for="InstitucionViewNit" class="label-material">Nit</label>
    </div>
    <div class="form-group-material">
      <input id="InstitucionViewCodigoDane" type="text" name="InstitucionViewCodigoDane" value="<?php echo $row['codigo_dane']; ?>" class="input-material" readonly>
      <label for="InstitucionViewCodigoDane" class="label-material">Codigo Dane</label>
    </div>

    <div class="form-group-material">
      <input id="InstitucionViewDepartamento" type="text" name="InstitucionViewDepartamento" value="<?php echo utf8_encode($row['departamento']); ?>" class="input-material" readonly>
      <label for="InstitucionViewDepartamento" class="label-material">Departamento</label>
    </div>

    <div class="form-group-material">
      <input id="InstitucionViewMunicipio" type="text" name="InstitucionViewMunicipio" value="<?php echo utf8_encode($row['municipio']); ?>" class="input-material" readonly>
      <label for="InstitucionViewMunicipio" class="label-material">Municipio</label>
    </div>

    <div class="form-group-material">
      <input id="InstitucionViewEducacion" type="text" name="InstitucionViewEducacion" value="<?php echo utf8_encode($row['tipo_de_educacion']); ?>" class="input-material" readonly>
      <label for="InstitucionViewEducacion" class="label-material">Tipo Educacion</label>
    </div>

    <div class="form-group-material">
      <input id="InstitucionViewDireccion" type="text" name="InstitucionViewDireccion" value="<?php echo utf8_encode($row['direccion']); ?>" class="input-material" readonly>
      <label for="InstitucionViewDireccion" class="label-material">Direccion</label>
    </div>
    <div class="form-group-material">
      <input id="InstitucionViewTelefono" type="text" name="InstitucionViewTelefono" value="<?php echo $row['telefono']; ?>" class="input-material" readonly>
      <label for="InstitucionViewTelefono" class="label-material">Telefono</label>
    </div>
  </div>
  <div class="modal-footer">
    <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
  </div>

<script src="js/material.js"></script>
