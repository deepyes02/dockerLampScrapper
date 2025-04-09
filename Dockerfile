FROM php:8.3-apache

# Install necessary PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Enable Apache modules
RUN a2enmod rewrite

# Copy application files
COPY ./public_html/ /var/www/html/
COPY ./etc/apache2/apache2.conf /etc/apache2/apache2.conf
# COPY ./private/var/log/apache2/error_log /private/var/log/apache2/error_log


# Set permissions
RUN chown -R www-data:www-data /var/www/html