FROM httpd
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
    libicu-dev \
     libxml2-dev 
VOLUME . /opt/docker 	 
	 
EXPOSE 80
CMD ["httpd-foreground"]
