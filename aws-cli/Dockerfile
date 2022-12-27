# Imagen docker de Ubuntu con utilitarios genericos para operar un entorno Linux Ubuntu
FROM luchoalarcon/base:utils

LABEL maintainer = "Lucho Alarcon luis.omar.alarcon@gmail.com"

# install AWS-CLI
# RUN apt-get install -y openjdk-18-jdk
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

# update headers
RUN apt-get update