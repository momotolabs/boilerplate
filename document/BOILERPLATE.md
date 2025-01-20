# Base boilerplate Momotolabs

### Instrucciones
Para el uso de todas las funcionalidades se recomienda el contar con docker instalado
el proyect cuenta con varios contenedores los cuales permiten el estandarizar un entorno de desarrollo
y un correcto funcionamiento para pdoer ser compartido entre equipos de desarrollo
los contededores que se ejecutan son los siguuinetes

- **web**: servidor ngnx de contenido estatico configurado para poder servir por medio de un enlace de fpm la
  interpretación de PHP
- **db**:  servidor de base de datos utiliza el rdbms maria db en su version 11.1, configurado con seguridad solo para
  entornos de desarrollo
- **php-fpm**: Servicio de interprete de php configurado con extensones para depuracion, coneccion a entornos de base
  de datos mysql, y librerias base de php para ejecutar Laravel como framework de desarrollo
- **redis**: se usa como servicio para lamacenamiento y gestion de elementos de memoria cache.

Para la ejecucion se pueden utlizar los comandos de docker pero en el caso para una mejor funcionaldiad se crea un
archivo de comandos tipo Makefile (solo funcional en entornos unix) donde se definen comandos en forma simplificada o abreviada
para su uso en el entorno de desarrollo
Los comando actuales son los siguientes:

`install`: se utiliaza para el poder ejecutar la instalacion del proyecto de laravel dicha ejecucion se da en el contenedor
de docker

`package`: se utiliaza para el instalar un nuevo paquete de composer

`packagedev`: idem al anterior con la diferenia que instala el paquete como depedencia de desarrollo

`dump`: hace un composer dump sobre el proyecto dentro del container

`test`: ejecuta dentro del contenedor la instrucción para correr los test de laravel

`coverage`: ejecuta los test con un complemento de cobertura de código esto lo permitirá siempre y cuando este configurada
las opciones de coverage en la extensión de xdebug de php

`migrate`: Ejecuta las migraciones desde el contenedor

`showmodel`: recibe el parametro de un nombre de un modelo de laravel y muestra la estructura del mismo

`newmigrate`: Ejecuta las nuevas migraciones creadas

`seed`: Ejecuta los seeders

`optimize`: Ejecuta una optimización de los elementos de laravel

`analyse`: Ejecuta la orden para hacer un analisís esatico del código

`pint`: Ejecuta un linter de codigo php con reglas base PSR12

`db-container`: Accede a el bash del contendor de la base de datos

`redis-container`:Accede al bash del contenedor de redis

`web-container`: Accede al bash del contenedor web

`php-container`: Accede al bash del contenedor php-fpm

`up`: ejecuta el comando de docker para ejecutar los contenedores del proyecto

`down`: Ejecuta el comando de docker para parar los contendores del proyecto

`up-build`: realiza la funcion de **up** con la diferencia que recosntruye los contendores 

