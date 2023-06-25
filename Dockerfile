FROM ubuntu:16.04
RUN apt-get update
RUN apt-get -y install apache2
RUN apt-get install -y git
RUN cd /var/www/html && \
            https://github.com/mohankumar-putta/mwebrepo.git
ENTRYPOINT apachectl -D FOREGROUND
