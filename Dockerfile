FROM tomcat:jre11-openjdk-slim

LABEL  description="Docker image with tomcat and web app."

COPY /build/libs/HelloServlet.war /usr/local/tomcat/webapps/HelloServlet.war

ENV JPDA_ADDRESS="*:8000"

ENV JPDA_SUSPEND="y"

ENV JPDA_TRANSPORT="dt_socket"

EXPOSE 8080 8000

CMD chmod +x /usr/local/tomcat/bin/catalina.sh

CMD ["catalina.sh","jpda","run"]