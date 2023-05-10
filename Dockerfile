FROM jenkins/jenkins:lts-rhel-ubi9-jdk17

USER root

RUN yum install -y yum-utils \
        && yum-config-manager -y --add-repo https://download.docker.com/linux/rhel/docker-ce.repo \
        && yum install -y --refresh docker-ce docker-ce-cli containerd.io

RUN usermod -aG docker jenkins
