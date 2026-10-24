#!/bin/bash

set -e

echo "Restart Apache"

sudo systemctl restart apache2

echo "Checking Apache"

sudo systemctl is-active apache2

echo "Deployment Successful"