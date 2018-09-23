<!-- LOADER -->
 <div id="preloader">
    <img class="preloader" src="img/loading-page/football_loader.gif" alt="">
 </div>

<style>
  .page-link{
    margin-left: 0.351px !important;
  }
</style>


<header class="page-header">
  <div class="container-fluid">
    <h2 class="no-margin-bottom">Institucion</h2>
  </div>
</header>

<!-- Breadcrumb-->
<div class="breadcrumb-holder container-fluid">
  <ul class="breadcrumb">
    <li class="breadcrumb-item"><a href="admin.php">Inicio</a></li>
    <li class="breadcrumb-item active">Institucion</li>
  </ul>
</div>


<!-- page content-->
<section class="dashboard-counts no-padding-bottom">
  <div class="container-fluid">
    <div class="bg-white has-shadow">
      <div class="row col-sm-8 col-sm-offset-2" style="padding-bottom: 15px !important;">
        <button type="button" data-toggle="modal" data-target="#ModalContainer" class="btn btn-primary" id="Add"><span class="fa fa-plus"></span> Nuevo</button>
      </div>

      <table id="myTable" class="table table-bordered table-striped table-condensed">
        <thead style="text-align:center;">
          <th>Nit</th>
          <th>Codigo</th>
          <th>Nombre</th>
          <th>Dirección</th>
          <th>Acciones</th>
        </thead>
        <tbody>
          <?php
            include ("../ConnectionDB.php");
            $sql = "SELECT * FROM instituto WHERE estado = 'activo'";

            //use for MySQLi-OOP
            $query = $conexion->query($sql);
            while($row = $query->fetch_assoc()){
              ?>
              <tr>
                <td><?php echo $row['nit']; ?></td>
                <td><?php echo $row['codigo_dane']; ?></td>
                <td><?php echo utf8_encode ($row['nombre_institucion']); ?></td>
                <td><?php echo utf8_encode ($row['direccion']); ?></td>
                <td>

                  <div class="btn-group" role="group">
                    <button type='button' id="View" class='btn btn-primary btn-sm' data-nit="<?php echo $row['nit']; ?>" data-icon="i" data-toggle="modal" data-target="#ModalContainer"><i class=''></i></button>
                    <button type='button' id="Edit" class='btn btn-success btn-sm' data-nit="<?php echo $row['nit']; ?>" data-toggle="modal" data-target="#ModalContainer"><i class='fa fa-edit'></i></button>
                    <button type='button' id="Delet" class='btn btn-danger btn-sm' data-nit="<?php echo $row['nit']; ?>"><i class='fa fa-trash'></i></button>
                  </div>
                </td>
              </tr>

              <?php
            }
            ?>
          </tbody>
        </table>
    </div>
  </div>
</section>


<script type="text/javascript">
  $(function(){ // this replaces document.ready
    setTimeout(function(){
      $('#preloader').fadeOut('slow', function() {
        $(this).remove();
      });
    }, 1000);
  });

  $(function () {
    $('#myTable').DataTable( {
        "language": {
            "url": "./dataTables/Spanish.json"
        }
      } );
  });

  $(document).on("click", "#Add", function () {
    $("#ContentModal").load('./pages/institution/AddInstitution.php',function(){
    });
  });

  $(document).on("click", "#View", function () {
    var nit = $(this).data("nit");
    var Parameters = '&nit='+nit;

    $("#ContentModal").load('./pages/institution/ViewInstitution.php?'+Parameters,function(){
      // console.log("pasando los datos");
    });
  });

  $(document).on("click", "#Edit", function () {
    var nit = $(this).data("nit");
    var Parameters = '&nit='+nit;

    $("#ContentModal").load('./pages/institution/EditInstitution.php?'+Parameters,function(){
      // console.log("pasando los datos");
    });
  });

  $(document).on("click", "#Delet", function () {
    var nit = $(this).data("nit");
    var Parameters = '&nit='+nit;

    swal({
      title: "¿Seguro que desea eliminar?",
      text: "No podrás deshacer este paso...",
      type: "warning",
      showCancelButton: true,
      cancelButtonText: "Cancelar",
      confirmButtonColor: "#DD6B55",
      confirmButtonText: "Eliminar!",
      closeOnConfirm: false },



      function(){
        $.ajax({
          url:"pages/institution/DeleteInstitution.php",
          type: 'POST',
          dataType: 'json',
          data: Parameters
        }).done(function(data){
          if(data.result == 'ok'){
            swal(" ","Institucion eliminada con exito", "success");

            // recarga
            // $("#page-wrapper").load('pages/institution/institution.php');
          }else{
            swal(" ","Algo ha salido mal, prueba nuevamente","error");
          }
        });
      });
  });
</script>
