#/bin/sh

if test -d node_modules;
then
  echo node_modules_exists ;
else
  cp -a /tmp/node_modules /usr/src/app/website;
fi

npm install

# cd /var/www/shipping
# php artisan serve --quiet &

cd /var/www/frontend
npm start
