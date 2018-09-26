<?php
  $IdInstitution = $_REQUEST["nit"];


  include_once '../ConnectionDB.php';

  $sql = "SELECT *,municipio FROM instituto
          INNER JOIN municipios on instituto.id_municipio = municipios.id_municipio
          WHERE nit = '$IdInstitution'";

  $result = mysqli_query($conexion, $sql);
  $row = mysqli_fetch_array($result);
 ?>

 <div class="modal-header">
   <h5 class="modal-title" id="ModalLabel">Editar Institucion</h5>
   <button type="button" class="close" data-dismiss="modal" aria-label="Close">
     <span aria-hidden="true">&times;</span>
   </button>
 </div>

 <div class="modal-body">
   <iframe name="InstitutionTarget" style="display:none;"></iframe>
   <form target="InstitutionTarget" method="post" name="EditInstitution" id="EditInstitution">
     <input type="hidden" name="oldNit" value="<?php echo $row['nit']; ?>">
     <div class="form-group-material">
       <input type="text" name="EditInstitutionNit" id="EditInstitutionNit" class="input-material" value="<?php echo $row['nit']; ?>">
       <label for="EditInstitutionNit" class="label-material">Nit</label>
     </div>
     <div class="form-group-material">
       <input type="text" name="EditInstitutionDane" id="EditInstitutionDane" class="input-material" value="<?php echo $row['codigo_dane']; ?>">
       <label for="EditInstitutionDane" class="label-material">Codigo Dane</label>
     </div>
     <div class="form-group-material">
       <input type="text" name="EditInstitutionName" id="EditInstitutionName" class="input-material" value="<?php echo utf8_encode ($row['nombre_institucion']); ?>">
       <label for="EditInstitutionName" class="label-material">Nombre Institucion</label>
     </div>

     <div class="form-group row">
       <label class="col-sm-4 form-control-label">Departamento</label>
       <div class="col-sm-8">
         <select name="EditInstitutionDepartamento" id="EditInstitutionDepartamento" class="form-control mb-3">
           <option value="0" >Seleccione un departamento</option>
             <?php
               $sql = "SELECT id_departamento, departamento FROM departamentos";
               if ($result = mysqli_query($conexion, $sql)) {
                 if (mysqli_num_rows($result) > 0) {
                   while($rowConsulta = mysqli_fetch_assoc($result)){
                     ?>
                     <option value="<?php echo $rowConsulta['id_departamento']; ?>"><?php echo utf8_encode($rowConsulta['departamento']); ?></option>
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
         <select name="EditInstitutionCiudad" id="EditInstitutionCiudad" class="form-control mb-3">
           <option value="0" >Seleccione un Municipio / Ciudad</option>
         </select>
       </div>
     </div>

     <div class="form-group row">
       <label class="col-sm-4 form-control-label">Tipo de Educacion</label>
       <div class="col-sm-8">
         <select name="EditInstitutionTipoEducacion" id="EditInstitutionTipoEducacion" class="form-control mb-3">
           <option value="0">Seleccione un tipo</option>
           <option value="1">Publico</option>
           <option value="2">Privado</option>
         </select>
       </div>
     </div>

     <div class="form-group-material">
       <input type="text" name="EditInstitutionDireccion" id="EditInstitutionDireccion" class="input-material" value="<?php echo $row['direccion'];  ?>">
       <label for="EditInstitutionDireccion" class="label-material">Dirección</label>
     </div>
     <div class="form-group-material">
       <input type="text" name="EditInstitutionTelefono" id="EditInstitutionTelefono" class="input-material" value="<?php echo $row['telefono'];  ?>">
       <label for="EditInstitutionTelefono" class="label-material">Numero Telefonico</label>
     </div>


   </form>
 </div>
 <div class="modal-footer">
   <button type="button" class="btn btn-danger" data-dismiss="modal" id="cerrar">Cerrar</button>
   <button type="button" class="btn btn-primary" name="SaveEditInstituttion" id="SaveEditInstituttion">Guardar</button>
 </div>

 <script src="js/material.js"></script>

 <script>
 $(document).ready(function () {
   $('#EditInstitutionDepartamento').on("change", function () {
     $('#EditInstitutionDepartamento').each(function () {
       var valor = $(this).val();
       $.ajax({
         url:"pages/institution/get_municipio.php",
         type: 'POST',
         dataType: 'html',
         data: {seleccion:valor}
       }).done(function(data){
           $("#EditInstitutionCiudad").html(data);
       });
     });
   });

   $('#SaveEditInstituttion').on("click", function () {
     var Parameters = $('#EditInstitution').serialize();
     $.ajax({
       url:"pages/institution/SaveEditInstitution.php",
       type: 'POST',
       dataType: 'json',
       data: Parameters
     }).done(function(data){
       if(data.result == 'ok'){
         swal(" ","Cambios guardados con exito con exito", "success");
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
