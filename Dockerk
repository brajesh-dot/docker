FROM centos:latest
MAINTAINER bragarg63@gmail.com
RUN yum install -y httpd\
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html
WORKDIR /var/www/html
RUN unzip kindle.zip
EXPOSE 80
COPY /sourcecode/docker.yml /etc
