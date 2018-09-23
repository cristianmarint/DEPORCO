<?php @session_start();
  if($_SESSION["AUTENTICA"] != "SI"){
    header("Location:./index.php");
    exit();
  }
 ?>
