FROM nginx:latest

# Instala PHP y otras dependencias
RUN apt-get update && \
    apt-get install -y php-fpm php-mysql && \
    rm -rf /var/lib/apt/lists/* \
    chown -R www-data:www-data /var/www/html/project/storage \
    chown -R www-data:www-data /var/www/html/project/storage \
   php artisan key:generate


# Copia la configuración de Nginx
COPY ./nginx.conf 	/etc/nginx/nginx.conf

# Copia los archivos de la aplicación
COPY ./src /var/www/html

# Expone el puerto 80
EXPOSE 80
