FROM ubuntu:20.04

ARG user=polymer

RUN apt-get update
RUN apt install git -y
RUN apt install curl -y
RUN apt install sudo -y
RUN curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
RUN apt install -y nodejs
RUN npm install -g gulp bower polymer-cli --unsafe-perm 

RUN mkdir -p /home/${user}/app

VOLUME /home/${user}/app

WORKDIR /home/${user}/app

EXPOSE 8081







