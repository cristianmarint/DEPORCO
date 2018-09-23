<?php
    // $servidor = "";
    // $usuario = "";
    // $contrasena = "";
    // $bd = "";

    $servidor = "localhost";
    $usuario = "root";
    $contrasena = "";
    $bd = "proyecto_torneo";

    $conexion=mysqli_connect("$servidor","$usuario","$contrasena","$bd");

        return $conexion;

?>
