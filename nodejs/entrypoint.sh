#/bin/sh

if test -d node_modules;
then
  echo node modules exists ;
else
  echo node modules does not exists;
fi

echo npm install
npm install

# echo starting local shipping service
# cd /var/www/shipping
# php artisan serve --quiet &

echo starting frontend
cd /apps/frontend
npm start
