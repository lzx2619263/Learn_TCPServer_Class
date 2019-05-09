#buld java web app container image
FROM centos
MAINTAINER lzx "lzx2619263@163.com"

#Make java and tomcat install directory
#RUN mkdir /usr/local/TCPServer
RUN yum -y install java-1.8.0-openjdk.x86_64

#Copy jre and tomcat into image
ADD TCPServer.class /usr/local/
#ADD server-jre-8u211-linux-x64.tar.gz /usr/local/java/

#ENV PATH $PATH:/usr/local/java/jdk1.8.0_211/jre/bin
ENV PATH $PATH:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.212.b04-0.el7_6.x86_64/jre/bin
ENV CLASSPATH $CLASSPATH:/usr/local

#Expose http port
EXPOSE 6666

CMD ["java","TCPServer"]
