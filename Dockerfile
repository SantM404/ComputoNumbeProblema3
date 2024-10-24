#Es como pedir o solicitar por ejemplo un contenedor que ya tenga instalado la versión que
#queramos usar, en este caso se usó la 7.1, de igual forma se necesita apache, ya que es
#esto lo que nos ayuda o hace que nuestra página web o algo que tenga que ver con web funcione (appWeb, página web)
FROM php:7.4-apache

#Aquí se instalan las extensiones necesarias que son las de php, esto lo que hace es que nuestra página pueda trabajar
#con bases de datos, en el ejemplo se añadió la extensión pdo_mysql para poder trabajar con la bd
RUN docker-php-ext-install pdo pdo_mysql

#En este paso lo que se realiza es que se pueda copiar nuestros archivos y páginas web que tengamos en la carpeta que se especifica
#mas que nada para que todos lso archivos puedan verse reflejados en internet o visitando el link que es de nestra página
COPY . /var/www/html/

#El paso expose lo que hace prácticamente es exponer/abrir, como si fuera una puerta, el puerto 80; para que las personas que quieran
#o conozcan el enlace puedan entrar y ver lo que hay dentro de nuestro sitio 
EXPOSE 80
