FROM httpd:latest

RUN apt-get update && apt-get install -y wget make gcc

RUN wget https://museum.php.net/php1/php-108.tar.gz -O /tmp/php-108.tar.gz

RUN tar xfz /tmp/php-108.tar.gz

RUN echo '#define ROOTDIR "/usr/local/apache2/htdocs"' > php/config.h

RUN mkdir htdocs/logs

RUN cd php && make

RUN cp php/*.cgi cgi-bin

RUN chmod u+s cgi-bin/php*.cgi

RUN sed -i.bak 's/#LoadModule cgi/LoadModule cgi/g' conf/httpd.conf
