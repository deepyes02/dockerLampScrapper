FROM php:8.3-apache

# Install necessary PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Enable Apache modules
RUN a2enmod rewrite

# Install Composer
RUN apt-get update && apt-get install -y curl unzip \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy application files
# COPY ./etc/apache2/apache2.conf /etc/apache2/apache2.conf


# Set permissions
RUN chown -R www-data:www-data /var/www/html
