FROM tomcat:jre11-openjdk-slim

LABEL  description="Docker image with tomcat and web app."

COPY /build/libs/HelloServlet.war /usr/local/tomcat/webapps/HelloServlet.war

EXPOSE 8080

CMD chmod +x /usr/local/tomcat/bin/catalina.sh

CMD ["catalina.sh", "run"]