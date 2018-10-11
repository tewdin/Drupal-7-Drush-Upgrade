#!/bin/sh
# Author: Timo Anttila, info@tuspe.com
cd /www/drupal
for d in ./* ; do (cd "$d/www/sites" && drush up -y && drush cc all); done
chown -R www-data.www-data /www/drupal
