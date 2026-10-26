#!/bin/bash

set -e

APP_DIR=/var/www/lara13-server

echo "After Install Started"

cd $APP_DIR

echo "Setting Laravel permissions"

sudo chown -R ubuntu:ubuntu $APP_DIR
# sudo chmod -R 775 $APP_DIR/storage
# sudo chmod -R 775 $APP_DIR/bootstrap/cache

sudo chown -R www-data:www-data storage bootstrap/cache

sudo chmod -R 775 storage
sudo chmod -R 775 bootstrap/cache

echo "Clearing Laravel Caches"

php artisan config:clear
php artisan route:clear
php artisan view:clear
php artisan optimize:clear

echo "Creating optimized caches"

php artisan config:cache
php artisan route:cache
php artisan view:cache

php artisan cache:clear

echo "After Install completed"

