FROM centos:7
MAINTAINER Arunn "arunnr@temenos.com"
RUN yum -y install unzip
ADD jdk-8u171-linux-x64.rpm /tmp/jdk-8u171-linux-x64.rpm
RUN rpm -ivh /tmp/jdk-8u171-linux-x64.rpm && rm -f /tmp/jdk-8u171-linux-x64.rpm
#ENV JAVA_HOME=/usr/lib/jvm/java-8-oracle
ENV JAVA_HOME=/usr/java/jdk1.8.0_171-amd64
ENV PATH=$PATH:$JAVA_HOME/bin
