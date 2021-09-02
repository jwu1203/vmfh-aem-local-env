FROM centos:7


RUN mkdir /opt/aem
WORKDIR /opt/aem/

COPY ./jdk-11.0.12_linux-x64_bin.rpm /opt/aem/jdk-11.0.12_linux-x64_bin.rpm 
RUN cd /opt/aem && rpm -ivh jdk-11.0.12_linux-x64_bin.rpm

ENV CQ_JVM_OPTS   "-server -Xmx4g -Xms4g -Djava.awt.headless=true"

COPY ./AEM_6.5_Quickstart.jar /opt/aem/AEM_6.5_Quickstart.jar
RUN cd /opt/aem  &&  java -Djava.awt.headless=true -jar AEM_6.5_Quickstart.jar -unpack



