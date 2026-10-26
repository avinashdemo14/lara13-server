#!/bin/bash

set -e

APP_DIR=/var/www/lara13-server

echo "After Install Started"

echo "Setting Laravel permissions"

sudo chown -R ubuntu:ubuntu $APP_DIR
sudo chmod -R 775 $APP_DIR/storage
sudo chmod -R 775 $APP_DIR/bootstrap/cache

echo "Clearing Laravel Caches"

cd $APP_DIR
php artisan config:clear
php artisan route:clear
php artisan view:clear

echo "Creating optimized caches"

php artisan config:cache
php artisan route:cache
php artisan view:cache

php artisan cache:clear

echo "After Install completed"

