FROM openjdk:8-alpine
RUN apk update && apk add /bin/sh
RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app
COPY ~/home/ec2-user/var/lib/jenkins/workspace/pjob-3/weebapp/target/webapp.war ~/home/ec2-user/
COPY webapp.war $PROJECT_HOME/webapp.war
WORKDIR $PROJECT_HOME
CMD ["java","-jar","/opt/app/webapp.war"]
