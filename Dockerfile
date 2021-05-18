FROM php:7.4-apache-buster
  ARG DEBIAN_FRONTEND=noninteractive 
  ENV TZ=Europe/Paris

 
 #RUN apt-get update && \
 #    apt-get install -y apache2 php libapache2-mod-php mysql-client php-mysql
 RUN docker-php-ext-install pdo pdo_mysql
 
 #RUN sed -i 's/;extension=php_mysqli.dll/extension=php_mysqli.dll/' /etc/php/7.0/apache2/php.ini
 #RUN sed -i 's/;extension=php_pdo_mysql.dll/extension=php_pdo_mysql.dll/' /etc/php/7.0/apache2/php.ini
 ADD docker/index.php /var/www/test/index.php 
 #RUN apt-get install -y tzdata
 ADD docker/host.conf /etc/apache2/sites-enabled/000-default.conf 

 VOLUME /Test
 
 ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

 
