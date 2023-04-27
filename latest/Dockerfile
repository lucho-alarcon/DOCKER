# Imagen docker de Ubuntu con utilitarios genericos para operar un entorno Linux Ubuntu
FROM ubuntu:latest

LABEL maintainer = "Lucho Alarcon luis.omar.alarcon@gmail.com"
LABEL commit-message = "build=LATEST"

# update & upgrade
RUN apt-get update && apt-get -y upgrade

# install VIM - SSH - WGET - CURL
RUN apt-get install -y vim \
                        openssh-client \
                        wget \
                        curl

# update headers
RUN apt-get update
