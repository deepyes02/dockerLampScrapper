FROM httpd:2.4.57
COPY ./public_html/ /usr/local/apache2/htdocs/
COPY ./usr/local/apache2/conf/httpd.conf /usr/local/apache2/conf/httpd.conf