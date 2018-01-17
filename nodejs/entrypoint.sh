#/bin/sh

cd /var/www/shipping
php artisan serve --quiet &

cd /var/www/frontend
npm start
