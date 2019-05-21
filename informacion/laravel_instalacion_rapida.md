0) composer install
1) php artisan key:generate
2) php artisan migrate
3) php artisan db:seed
4) composer dumpautoload

-- Servidor

Solo en el computador
0) php artisan serve

Red local. (Usar celular como router,reemplazar por IP deseada)
1) php artisan serve --host 192.168.1.10 --port 80




en caso de errores con composer, revisar el archivo php.init (de la version que se use)
1) si el problema es por In PDOConnection.php, descomentar las lineas 
    extension=pdo_pgsql
    extension=pdo_sqlite
    extension=pgsql
    extension=pdo_mysql
    extension=mysqli

