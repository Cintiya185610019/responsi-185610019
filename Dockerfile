FROM centos:latest
COPY index.html /var/www/html/
MAINTAINER cintiya
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
CMD ["/user/sbin/httpd","-D", "FOREGROUND"]
RUN yum -y install httpd
