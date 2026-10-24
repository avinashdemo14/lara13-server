#!/bin/bash

set -e

cd /var/www/lara13-server

echo "After Install Started"

echo "Setting Laravel permissions"

sudo chown -R www-data:www-data /var/www/lara13-server

sudo chmod -R 775 storage
sudo chmod -R 775 bootstrap/cache

echo "Clearing Laravel Caches"

php artisan config:clear
php artisan route:clear
php artisan view:clear

echo "Creating optimized caches"

php artisan config:cache
php artisan route:cache
php artisan view:cache

php artisan cache:clear

echo "After Install completed"

