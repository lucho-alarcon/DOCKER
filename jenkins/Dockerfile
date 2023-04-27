# Imagen docker de Ubuntu con utilitarios genericos para operar un entorno Linux Ubuntu + JAVA
#FROM luchoalarcon/base:openjdk-18
FROM luchoalarcon/base:openjdk-18

LABEL maintainer = "Lucho Alarcon luis.omar.alarcon@gmail.com"
LABEL commit-message = "build=JENKINS"

# installing JENKINS
RUN curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
RUN echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | tee /etc/apt/sources.list.d/jenkins.list > /dev/null
RUN apt-get update
RUN apt-get install -y jenkins

# update headers
RUN apt-get update
