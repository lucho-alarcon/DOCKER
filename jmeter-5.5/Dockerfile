# Imagen docker de Ubuntu con utilitarios genericos para operar un entorno Linux Ubuntu
FROM luchoalarcon/base:openjdk-18

LABEL maintainer = "Lucho Alarcon luis.omar.alarcon@gmail.com"

# installing jmter 5.5
WORKDIR /sw/jmeter-5.5
RUN wget https://dlcdn.apache.org/jmeter/binaries/apache-jmeter-5.5.tgz
RUN tar xzvf apache-jmeter-5.5.tgz
WORKDIR /

# update headers
RUN apt-get update
