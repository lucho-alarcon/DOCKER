# Imagen docker de Ubuntu con utilitarios genericos para operar un entorno Linux Ubuntu
FROM ubuntu:latest

LABEL maintainer = "Lucho Alarcon luis.omar.alarcon@gmail.com"

# install CURL
RUN apt-get update && apt-get -y upgrade && apt-get install -y curl

# KUBECTL dependencies
RUN curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list

# install VIM - MYSQL CLIENT - SSH - PYTHON 3.10 - WGET - KUBECTL - GIT
RUN apt-get update
RUN apt-get install -y vim \
                        unzip \ 
                        default-mysql-client \
                        openssh-client \
                        python3.10 \
                        wget \
                        apt-transport-https \
                        ca-certificates \
                        kubectl \
                        git

# update headers
RUN apt-get update
