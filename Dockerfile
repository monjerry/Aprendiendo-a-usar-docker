# De que imagen nos estamos basando
FROM python:latest

# Quien esta manteniendo esta imagen
MAINTAINER monjerry@monjerry.com

# RUN se ocupa para ejecutar comandos al construir la imagen. En este caso haremos una carpeta
RUN mkdir -p /usr/src/app

# Estableceremos esta carpeta como la carpeta en donde estara nuestra app
WORKDIR /usr/src/app

# Copiaremos el archivo requirements.txt que se ocupa para instalar las dependencias que usaremos
COPY requirements.txt /usr/src/app/

# Copiaremos el nuestro archivo que tiene la aplicacion
COPY api.py /usr/src/app/

# Hora de instalar las dependencias que necesitamos
RUN pip install --no-cache-dir -r requirements.txt

# EXPOSE sirve para exponer un puerto, en este caso el 8000.
EXPOSE 8000

# Ejecutamos nuestra aplicación
CMD python /usr/src/app/api.py
