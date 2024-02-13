
#creamos la imagen
docker build -t hello-node .

#comprobamos que esta con:
docker images

#ejecutar la imagen en un container y mapear puertos
docker run -p 4000:3000 hello-node

docker-compose build

#Esto ara que se vayan copiando los cambios de nuestro entorno de trabajo:
    volumes:
      - .:/usr/src/app

#Para acceder a la imagen que hemos creado :
docker ps
#Con esto sabemos el nombre y lo aplicamos:
docker exec -it exampleapp bash

#instalamos nodemon para que se reinicie el servidor cuando cambie el codigo
npm i nodemon -D

#y lo ejecutamos en script para que este siempre al tanto
"dev": "nodemon src/index.js"
#cambiamos el arranque de dockerfile
CMD ["npm", "run", "dev"]

Empezamos con la creación del repositorio y su consiguiente clonado en el escritorio:

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 005](https://github.com/sergicasanova/proyectDocker/assets/130445699/5c3cad70-249f-423a-a794-6cb8c63fb837)

Y el clonado:

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 006](https://github.com/sergicasanova/proyectDocker/assets/130445699/505551f9-8ddc-4085-b2cb-306ee3602c2e)

A continuación cogemos el zip enviado por la profesora con los documentos: y los ponemos en nuesto 
documento donde trabajaremos.

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 007](https://github.com/sergicasanova/proyectDocker/assets/130445699/f5875f7c-8b63-4ac9-ac9f-f9ffb4d5b430)

A partir de aquí empezamos a crear el dockerfile – el Docker-compose:

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 008](https://github.com/sergicasanova/proyectDocker/assets/130445699/c32540b4-9e74-4f0a-8961-a0ecb55aef25)

Donde primeramente hacemos una conexión con la base de datos, para ello hay que implementar el dump:

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 009](https://github.com/sergicasanova/proyectDocker/assets/130445699/6441ec9e-735b-427c-8853-9a6464fcdcef)

El cual para crearlo primeramente debemos instalar el mongoosedump en nuestro ordenador. A partir de 
aquí iniciar con el Docker-compose build y up para que guarde los parámetros en la base de datos:

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 010](https://github.com/sergicasanova/proyectDocker/assets/130445699/2c8d1938-87c1-4384-9d6e-6d6d7df3b390)
![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 011](https://github.com/sergicasanova/proyectDocker/assets/130445699/74424fae-aaef-46a7-abb5-6820767eba64)

Con el ultimo comando nos libramos de hacer el Docker-compose build, puesto que inicia los dos comandos 
a la vez.

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 012](https://github.com/sergicasanova/proyectDocker/assets/130445699/c65fa4c0-39cc-4129-a64a-e890b55c3114)

Como podemos ver en nuestra base de datos de mongo están todos nuestros archivos del dump.

A partir de aquí ya habría que empezar con el backend y el frontend:
Hacemos una carpeta para cada uno:

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 013](https://github.com/sergicasanova/proyectDocker/assets/130445699/203da850-1526-4ac6-9391-25b4af2442a3)

En cada carpeta podríamos poner prácticamente los mismos archivos, excepto por cambiar las routes:

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 014](https://github.com/sergicasanova/proyectDocker/assets/130445699/b6e6024a-1824-4f2e-9f92-46846842fadf)

Los documentos de cada uno:

Aquí tenemos la routes del backend:

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 015](https://github.com/sergicasanova/proyectDocker/assets/130445699/f9dd5ba1-b4cc-4fd0-8fae-cf96331eb06d)

Y aquí las del frontend:

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 016](https://github.com/sergicasanova/proyectDocker/assets/130445699/15d0b0c0-8a9e-4019-9496-e22ab7544d66)

Voy a mostrar los demás documentos para tenerlos en cuenta pero son los mismos, 
tanto en backend como en frontend:

Database.js

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 017](https://github.com/sergicasanova/proyectDocker/assets/130445699/70089ece-7e1e-4c0d-9074-c43360b09fcb)

Index.js

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 018](https://github.com/sergicasanova/proyectDocker/assets/130445699/974787c7-9a21-4dea-baeb-6798f3f54d4a)

Dockerfile-backend donde solo cambia el nombre respecto al de Dockerfile-frontend

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 019](https://github.com/sergicasanova/proyectDocker/assets/130445699/e5ea7889-b80d-4d8e-afc6-c955d89329ce)

Aquí lo muestro:

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 020](https://github.com/sergicasanova/proyectDocker/assets/130445699/72733bea-3b20-4978-9841-72a9d6eff88e)

Y por ultimo el package.json necesario en las dos carpetas para que funcione:

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 021](https://github.com/sergicasanova/proyectDocker/assets/130445699/b04c2d41-bc26-4856-8fc6-6d61602b46fe)

Continuamos con lo necesario en el Docker-compose.yml además de lo que ya teníamos implementamos los campos para el frontend y el 

backend:

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 022](https://github.com/sergicasanova/proyectDocker/assets/130445699/e444c35c-51a0-448a-ab53-fa3c9889c31c)

Cada uno con sus puertos.
Y reiniciamos el container,es decir volvemos a usar el Docker-compose up -d

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 023](https://github.com/sergicasanova/proyectDocker/assets/130445699/f55c318a-c2f0-4fb5-a369-3e32bebda602)
![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 024](https://github.com/sergicasanova/proyectDocker/assets/130445699/89126534-d28c-49b0-9178-975ea3c846e2)

A continuación lo abriremos para cercionarnos de que cada uno esta fucnionando:

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 025](https://github.com/sergicasanova/proyectDocker/assets/130445699/239c3dcb-3288-4bab-a3c0-4a7542dcb1b2)
![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 026](https://github.com/sergicasanova/proyectDocker/assets/130445699/c6334ad5-4f8d-44ca-9827-5311a8c07202)

Como podemos ver en cada route sale el mensaje escrito, que podemos observar en 
capturas anteriores.
A continuación modifiando otra vez el docke-compose introducimos el siguiente 
paso que seria la conexión con el mongo-express:

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 027](https://github.com/sergicasanova/proyectDocker/assets/130445699/3e8245c0-ab04-40c8-8dff-60fd62489770)

Con esto implementado volvemos a crear el Docker-compose up-d

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 028](https://github.com/sergicasanova/proyectDocker/assets/130445699/46a7942f-a81c-4fed-bd8e-9d99cfb17d6b)

Aquí lo vemos creado y luego el enlace:

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 029](https://github.com/sergicasanova/proyectDocker/assets/130445699/de10b748-05a0-4e83-a889-1dbefb682be5)

Introducimos usuario: admin y contraseña: pass
que podemos encontrar en la documentación

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 030](https://github.com/sergicasanova/proyectDocker/assets/130445699/38e04b7d-3930-4e82-bf2d-c0e92b3bdf65)
![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 031](https://github.com/sergicasanova/proyectDocker/assets/130445699/7f54d46a-486a-42b4-8027-b4c35c952306)
![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 032](https://github.com/sergicasanova/proyectDocker/assets/130445699/aed81963-d242-4ace-ba16-82d18870cb9d)

Y ahora con todo esto creamos el nginx:
Primero creamos el nginx.conf:

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 033](https://github.com/sergicasanova/proyectDocker/assets/130445699/80e8e63b-d70c-4beb-b356-90065eb8ec7a)

Al cual le debe llegar tanto el backend como el frontend.

Modificamos el Docker-compose.yml

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 034](https://github.com/sergicasanova/proyectDocker/assets/130445699/2657e267-791e-420e-84fd-d81fba794b9a)

Y le volvemos a dar al comando, anteriormente borrando tod lo creado hasta el 
momento en imágenes y containers.
Y aquí tenemos todo creado en nuestro Docker:

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 035](https://github.com/sergicasanova/proyectDocker/assets/130445699/e1e78cb9-9734-4ee9-b4e2-196036ad18b8)

Y en funcionamiento.

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 036](https://github.com/sergicasanova/proyectDocker/assets/130445699/6f67af5a-9351-4ca9-9899-43fd5fda7c7c)

![Aspose Words c75e130a-21e7-4df5-b850-c51009645119 037](https://github.com/sergicasanova/proyectDocker/assets/130445699/6cb105b3-f0c1-4b62-8763-83d1fb13a01f)

Y con esto estaría todo excepto el opcional.



















