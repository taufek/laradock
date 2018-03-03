#/bin/sh

if test -d node_modules;
then
  echo node_modules_exists ;
else
  cp -a /tmp/node_modules /usr/src/app/website;
fi

echo npm install
npm install

echo starting local shipping service
cd /var/www/shipping
php artisan serve --quiet &


echo starting frontend
cd /apps/frontend
npm start
