FROM eboraas/apache-php 

#Definimos la carpeta /var/www/html
WORKDIR /var/www/html

#Copiamos los archivos
#Desde nuestro punto de directorio hacia nuestro workdir
COPY . . 

RUN apt -y update && apt -y install mariadb-client-core-10.3
