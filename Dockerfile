FROM FROM image-registry.openshift-image-registry.svc:5000/openshift/php:latest as builder

#Definimos la carpeta /var/www/html
WORKDIR /tmp

#Copiamos los archivos
#Desde nuestro punto de directorio hacia nuestro workdir
COPY . . 


