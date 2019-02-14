
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
  //     $("#page-wrapper").load('pages/instituto/instituto.php');
  //   });
  //
  // });


