FROM ubuntu:14.04

MAINTAINER Niall Byrne <nbyrne416@gmail.com>

RUN apt-get update && apt-get install -y apache2 && apt-get clean && rm -rf /var/lib/apt/lists/*
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock
ENV APACHE_PID_FILE /var/run/apache2

EXPOSE 80
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
