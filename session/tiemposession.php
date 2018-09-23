<?php
// fuente para documentacion: https://es.stackoverflow.com/questions/33750/como-cerrar-sesi%C3%B3n-despu%C3%A9s-de-un-tiempo-de-inactividad/64133
if(isset($_SESSION['tiempo']) ) {

//Tiempo en segundos para dar vida a la sesión.
$inactivo = 300;//min en este caso.

//Calculamos tiempo de vida inactivo.
$vida_session = time() - $_SESSION['tiempo'];

    //Compraración para redirigir página, si la vida de sesión sea mayor a el tiempo insertado en inactivo.
    if($vida_session > $inactivo)
    {
        //Removemos sesión.
        session_unset();
        //Destruimos sesión.
        session_destroy();              
        //Redirigimos pagina.
        header("Location:./index.php");

        exit();
    }
} else {
//Activamos sesion tiempo.
$_SESSION['tiempo'] = time();
}

?>