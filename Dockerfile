FROM tomcat
MAINTAINER jsandlin
EXPOSE 8080
ADD WeaveServices.war /usr/local/tomcat/webapps/
RUN rm -fr /usr/local/tomcat/webapps/ROOT
ADD ROOT /usr/local/tomcat/webapps/ROOT
CMD ["catalina.sh", "run"]
