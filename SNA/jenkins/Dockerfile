FROM jenkins/jenkins:latest-jdk11

USER root

RUN apt-get update \
    && apt-get install -y openssh-client \
    && apt-get install -y sshpass
