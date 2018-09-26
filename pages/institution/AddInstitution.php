<?php require '../ConnectionDB.php'; ?>

<div class="modal-header">
  <h5 class="modal-title" id="ModalLabel">Nueva Institucion</h5>
  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
<!-- AddInstitution -->
<div class="modal-body">
  <iframe name="InstitutionTarget" style="display:none;"></iframe>
  <form target="InstitutionTarget" method="post" name="AddInstitution" id="AddInstitution">

    <div class="form-group-material">
      <input type="text" name="AddInstitutionNit" id="AddInstitutionNit" class="input-material">
      <label for="AddInstitutionNit" class="label-material">Nit</label>
    </div>
    <div class="form-group-material">
      <input type="text" name="AddInstitutionDane" id="AddInstitutionDane" class="input-material">
      <label for="AddInstitutionDane" class="label-material">Codigo Dane</label>
    </div>
    <div class="form-group-material">
      <input type="text" name="AddInstitutionName" id="AddInstitutionName" class="input-material">
      <label for="AddInstitutionName" class="label-material">Nombre Institucion</label>
    </div>

    <div class="form-group row">
      <label class="col-sm-4 form-control-label">Departamento</label>
      <div class="col-sm-8">
        <select name="AddInstitutionDepartamento" id="AddInstitutionDepartamento" class="form-control mb-3">
          <option value="0" >Seleccione un departamento</option>
            <?php
              $sql = "SELECT id_departamento, departamento FROM departamentos";
              if ($result = mysqli_query($conexion, $sql)) {
                if (mysqli_num_rows($result) > 0) {
                  while($row = mysqli_fetch_assoc($result)){
                    ?>
                    <option value="<?php echo $row['id_departamento']; ?>"><?php echo utf8_encode($row['departamento']); ?></option>
                    <?php
                  }
                }
              }

            ?>
        </select>
      </div>
    </div>

    <div class="form-group row">
      <label class="col-sm-4 form-control-label">Municipio / Ciudad</label>
      <div class="col-sm-8">
        <select name="AddInstitutionCiudad" id="AddInstitutionCiudad" class="form-control mb-3">
          <option value="0" >Seleccione un Municipio / Ciudad</option>
        </select>
      </div>
    </div>

    <div class="form-group row">
      <label class="col-sm-4 form-control-label">Tipo de Educacion</label>
      <div class="col-sm-8">
        <select name="AddInstitutionTipoEducacion" id="AddInstitutionTipoEducacion" class="form-control mb-3">
          <option value="0" >Seleccione un tipo</option>
          <option value="1" >Publico</option>
          <option value="2" >Privado</option>
        </select>
      </div>
    </div>


    <div class="form-group-material">
      <input type="text" name="AddInstitutionDireccion" id="AddInstitutionDireccion" class="input-material">
      <label for="AddInstitutionDireccion" class="label-material">Dirección</label>
    </div>
    <div class="form-group-material">
      <input type="number" name="AddInstitutionTelefono" id="AddInstitutionTelefono" class="input-material">
      <label for="AddInstitutionTelefono" class="label-material">Numero Telefonico</label>
    </div>

  </form>
</div>
<div class="modal-footer">
  <button type="button" class="btn btn-danger" data-dismiss="modal" id="cerrar">Cerrar</button>
  <button type="button" class="btn btn-primary" name="SaveInstituttion" id="SaveInstituttion">Crear</button>
</div>

<script src="js/material.js"></script>

<script>
  $(document).ready(function () {
    $('#AddInstitutionDepartamento').on("change", function () {
      $('#AddInstitutionDepartamento').each(function () {
        var valor = $(this).val();
        $.ajax({
          url:"pages/institution/get_municipio.php",
          type: 'POST',
          dataType: 'html',
          data: {seleccion:valor}
        }).done(function(data){
            $("#AddInstitutionCiudad").html(data);
        });
      });
    });

    $('#SaveInstituttion').on("click", function () {
      var Parameters = $('#AddInstitution').serialize();
      $.ajax({
        url:"pages/institution/SaveInstitution.php",
        type: 'POST',
        dataType: 'json',
        data: Parameters
      }).done(function(data){
        if(data.result == 'ok'){
          swal(" ","Institucion guardada con exito", "success");
          $('#cerrar').click();
          // recarga
          // $("#page-wrapper").load('pages/institution/institution.php');
        }else{
          swal(" ","Algo ha salido mal, prueba nuevamente","error");
        }
      });
    });

  });
</script>
