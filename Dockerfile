FROM ubuntu:14.04

#install apache2
RUN apt-get update -y
RUN apt-get install apache2 -y

#install database
RUN echo -e 'Mike9377\nMike9377' | apt-get install mysql-server -y


#install php
RUN apt-get install software-properties-common -y
RUN yes '' | apt-add-repository ppa:ondrej/php
RUN apt-get update
RUN apt-get install php7.0-mysql php7.0-curl php7.0-json php7.0-cgi  php7.0 libapache2-mod-php7.0 -y --force-yes
#RUN apt-get install libapache2-mod-php7.0


#Restart Server
RUN service apache2 restart


#Check PHP
#RUN php -r 'echo "\n\nYour PHP installation is working fine.\n\n\n";'

RUN mysql_secure_installation -y

EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
