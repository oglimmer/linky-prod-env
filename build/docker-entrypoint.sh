#!/bin/bash

if [ "$1" = "yarn" ]; then
  while [ $(curl -s -o /dev/null -w "%{http_code}" http://couchdb:5984/) = "000" ]
  do
    sleep 1
  done

  if [ "$2" = "setup" ] && [ $(curl -s -o /dev/null -w "%{http_code}" http://couchdb:5984/linky) = "404" ]
  then
    echo "Creating linky database in couchdb"
    curl -s -X PUT http://couchdb:5984/linky
    curl -s -X PUT http://couchdb:5984/linky_archive
    sleep 1
    mkdir /tmp/createviews
    cd /tmp/createviews
    echo "Installing couchviews"
    npm install couchviews
    echo "Creating views"
    ./node_modules/.bin/couchviews push http://couchdb:5984/linky /home/build/linky/build/couchdb/linky
    ./node_modules/.bin/couchviews push http://couchdb:5984/linky_archive /home/build/linky/build/couchdb/linky-archive
    rm -rf /tmp/createviews
    set -- yarn start
  fi
fi

cd /home/build/linky

exec "$@"
