FROM centos:latest
MAINTAINER bgarg63@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page276/gymnast.zip /var/www/html
WORKDIR /var/www/html
RUN unzip gymnast.zip
RUN cp -rvf gymnast/*
RUN rm -rf gymnast gymnast.zip
CMD { "/usr/sbin/httpd","-D" "FOREGROUND"}
EXPOSE 80
