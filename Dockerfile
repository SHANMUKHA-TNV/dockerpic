FROM ubuntu:18.04
LABEL owner="vissu949@gmail.com"
ENV username=viswa
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=Viswa949
RUN apt update && apt install nginx -y && apt install iputils-ping -y
COPY number.sh
RUN chmod 700 number.sh && ./number.sh
