FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update 
RUN apt install -y python3 python3-pip 
RUN apt install -y supervisor 
RUN apt install -y apache2 
RUN apt install -y openssl 
RUN apt install -y mysql-server 
RUN apt install -y openssh-server 
RUN mkdir /run/sshd
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
EXPOSE 80 22 443 3306


