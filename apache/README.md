# Dockerfile

It will pull apache image from docker hub to build the container  
you can choose which version of apache http server you want by changing the tag  
More information about tags please check [Apache, is a Web server - Docker Hub](https://hub.docker.com/_/httpd)  

## conf

The place which stores config file of apache server.  
It will copy the http.conf you put in the ./conf/ into the container's /usr/local/apache2/conf/,  
which is the default path of Apache's config file

## ssl

If your project needs to use ssl certifications, you can put those files into this directory,  
the port of https is set to 9022, you can change the setting in ../docker-compose.yml

## data

Everything you put under the ./data/ will be copied into container's /usr/local/apache2/htdocs/
It's the default root of Apache(httpd:2.4) server.
As for me, I put the web page resources in this directory.
