<?php

/*
    @Descripcion Dado un directorio, retorna archivos aleatorios que esten en el.
    @$dir directorio donde se encuentran los archivos
*/
function random_pic($dir)
{
    $files = glob($dir . '/*.*');
    $file = array_rand($files);
    $res = str_replace('public/','',$files[$file]);
    return $res;
}