#buld java TCPServer container image
FROM centos
MAINTAINER lzx "lzx2619263@163.com"

#Make java and tomcat install directory
#RUN mkdir /usr/local/TCPServer

#Copy jre and tomcat into image
ADD TCPServer.class /usr/local/
ADD server-jre-8u211-linux-x64.tar.gz /usr/local/java/

ENV PATH $PATH:/usr/local/java/jdk1.8.0_211/jre/bin
ENV CLASSPATH $CLASSPATH:/usr/local

#Expose port
EXPOSE 6666

CMD ["java","TCPServer"]
