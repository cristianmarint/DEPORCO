$(document).ready(function(){
  $('#LoginUser').focus();
});

$(document).on("keypress","#LoginPassword", function (event) {
  var keycode = (event.keyCode ? event.keyCode : event.which);
  if(keycode == '13'){
    $('#Login').click();
  }
});

$(document).on("click", "#Login", function () {
  if(validar()){
    var usuario = $("#LoginUser").val();
    var clave = $("#LoginPassword").val();

    var parametros = '&usuario='+usuario+'&clave='+clave;

    $.post('session/control.php',parametros, function(jsondata){
      if(jsondata.validacion == 'admin'){

        swal({
          title: jsondata.mensaje,
          timer: 3000,
          type: "success",
          showConfirmButton: false
        });
        location.href = 'admin.php';
      }else{
        swal({
          title: jsondata.mensaje,
          timer: 3000,
          type: "error",
          showConfirmButton: false
        });

        location.href = 'index.php';
      }
    },"json");

  }else{
    event.prevenDefault();
    return false;
  }
});

//El focus despues del swal no funciona, revisar esa parte
function validar() {
  if($("#LoginUser").val() == ""){
      swal({
        title: "Error. Ingrese Usuario!",
        timer: 2000,
        type: "error",
        showConfirmButton: false
      });
      $('#LoginUser').focus();
      return false;
  }

  if($("#LoginPassword").val() == ""){
      swal({
        title: "Error. Ingrese Contraseña!",
        timer: 2000,
        type: "error",
        showConfirmButton: false
      });

      $('#LoginPassword').focus();
      return false;
  }

  return true;
}
