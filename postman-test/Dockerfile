FROM node:latest

# Definir variables de entorno con un valor predeterminado
ENV GIT_USER "null"
ENV GIT_EMAIL "null"
ENV GIT_ACCESS_TOKEN "null"
ENV GIT_REPO "null"

RUN apt-get update -y &&  \ 
    apt-get install figlet

RUN npm install -g newman

# Copia el script de entrada al sistema de archivos del contenedor
COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

# Establece el script como el entrypoint
ENTRYPOINT ["entrypoint.sh"]
