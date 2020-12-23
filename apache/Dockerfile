FROM httpd:2.4

RUN apt-get update
RUN apt-get install -y vim
RUN apt-get install -y dialog
RUN apt-get install -y php libapache2-mod-php php-mysql

COPY ./conf/.vimrc /root/
COPY ./data/* /usr/local/apache2/htdocs/
COPY ./conf/httpd.conf /usr/local/apache2/conf
COPY ./ssl/* /usr/local/apache2/ssl/
COPY ./entrypoint.sh /root/
