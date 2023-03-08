#!/bin/bash

chmod -R 775 /var/www/html/project/storage
chown -R www-data:www-data /var/www/html/project/storage
cd /var/www/html/project
php artisan key:generate
