#!/bin/sh
set -eu
echo "Tuning the container..."
a2enmod http2
echo "Protocols h2 h2c http/1.1" >> /etc/apache2/apache2.conf
/entrypoint.sh apache2-foreground