<?php
  include 'security.php';
  //$usuario = $_COOKIE['id_perfil'];
  @session_start();
  // setcookie("idusuario","",1);
  //setcookie("id_perfil","",1);
  session_destroy();
 ?>

 <script language="javascript">
 {
   window.location="../index.php";
 }
 </script>
