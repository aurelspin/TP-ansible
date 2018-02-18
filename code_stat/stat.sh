#!/bin/bash

gitstats /srv/tp/code /var/www/html
service apache2 start
tail -f /dev/null

