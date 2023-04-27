# Imagen docker de Ubuntu con utilitarios genericos para operar un entorno Linux Ubuntu
FROM luchoalarcon/base:utils

LABEL maintainer = "Lucho Alarcon luis.omar.alarcon@gmail.com"
LABEL commit-message = "build=OPENJDK-18"

# install OPENJDK 18
RUN apt-get update && apt-get install -y openjdk-18-jdk

# update headers
RUN apt-get update
