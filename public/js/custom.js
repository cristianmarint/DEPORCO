/*
* ==========================================================
*     Form
* ==========================================================
*/
// DOCUMENTACION: http://javascript-coder.com/javascript-form/javascript-reset-form.phtml
function limpiarForm(oForm) {

    var elements = oForm.elements;

    oForm.reset();

    for(i=0; i<elements.length; i++) {

      field_type = elements[i].type.toLowerCase();

      switch(field_type) {

          case "text":
          case "password":
          case "textarea":
              case "hidden":

              elements[i].value = "";
              break;

          case "radio":
          case "checkbox":
                if (elements[i].checked) {
                     elements[i].checked = false;
              }
              break;

          case "select-one":
          case "select-multi":
                      elements[i].selectedIndex = -1;
              break;

          default:
              break;
      }
      }
  }

/*
* ==========================================================
*     Loader
* ==========================================================
*/
    // $(window).load(function() {
        // $("#preloader").on(500).fadeOut();
        // $(".preloader").on(600).fadeOut("slow");
    // });

  $(function(){ // this replaces document.ready
    setTimeout(function(){
      $('#preloader').fadeOut('slow', function() {
        $(this).remove();
      });
     }, 1500);
  });



/*
* ==========================================================
*     Change PassWord
* ==========================================================
*/

  // $(document).on("click", "#SaveChangePassword", function () {
  //     let Parameters = $('#ChangePassword').serialize();
  //     $.ajax({
  //         type: "POST",
  //         url: "Controllers/UserController.php",
  //         data: Parameters,
  //         dataType: 'json'
  //     }).done(function (data) {
  //         if(data.result == 'right'){
  //             swal(" ","Contraseña guardada", "success");
  //             $('#ChangePasswordClearForm').click();
  //             // limpiarForm(ChangePassword);
  //             $('#ChangePasswordClose').click();
  //         }else if(data.result == 'different'){
  //             swal(" ","Las contraseñas no coinciden, trata nuevamente", "error");
  //         }else{
  //             swal(" ","No se pudo guardar", "error");
  //         }
  //     });
  // });


  // $(document).ready(function () {
  //   $('#SaveChangePassword').on("click", function () {
  //     var Parameters = $('#ChangePassword').serialize();
  //     $.ajax({
  //       type: "POST",
  //       url: "Controllers/UserController.php",
  //       data: Parameters,
  //       dataType: 'json'
  //     }).done(function (data) {
  //       if(data.result == 'right'){
  //         swal(" ","Contraseña guardada", "success");
  //         $('#ChangePasswordClearForm').click();
  //         // limpiarForm(ChangePassword);
  //         $('#ChangePasswordClose').click();
  //       }else if(data.result == 'different'){
  //         swal(" ","Las contraseñas no coinciden, trata nuevamente", "error");
  //       }else{
  //         swal(" ","No se pudo guardar", "error");
  //       }
  //     });
  //   });
  // });
/*
* ==========================================================
*     Asincrono
* ==========================================================
*/
  // $(document).ready(function () {
  //     $("#link_config").on("click", function () {
  //         $("#page-wrapper").load('Config.php');
  //     });
  //
  //
  //   $("#link_institution").on("click", function () {
  //     $("#page-wrapper").load('pages/institutos/institutos.php');
  //   });
  //
  // });
