# Aprendiendo-a-usar-docker
Simple aplicación en python que corre adentro de un container

# Instrucciones

* Instalar docker
* Ejecutar **sudo docker build -t monjerry-docker:latest .**
* Ejecutar **sudo docker run -p 8000:8000 monjerry-docker**

# Para parar el contenedor

* Ejecutar **sudo docker ps**
* Ver que id esta usando nuestro contenedor
* Ejecutar **sudo docker stop \<ID del contenedor>**
* Si quieres remover el contenedor por completo ejecutar despues **sudo docker rm \<ID del contenedor>** (si no lo remueves por completo lo podrías reiniciar después haciendo un **sudo docker restart \<ID del contenedor>**)
