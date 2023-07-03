FROM openjdk:8-alpine
RUN apk update && apk add /bin/sh
RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app
WORKDIR /home/ec2-user/var/lib/jenkins/workspace/project-1/webapp/target/
RUN chmod -R 2755 webapp.war
COPY webapp.war $PROJECT_HOME/webapp.war
WORKDIR $PROJECT_HOME
CMD ["java","-jar","/opt/app/webapp.war"]
