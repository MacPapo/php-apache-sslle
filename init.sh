#!/bin/bash

# Esegui Certbot per ottenere i certificati SSL
certbot --apache --non-interactive --agree-tos --email 891938@stud.unive.it -d macpapo.github.io
certbot --apache --non-interactive --agree-tos --email 891938@stud.unive.it -d macpapo.github.io

# Mantiene Apache in esecuzione in foreground
apachectl -DFOREGROUND &
apache_pid=$!

# Rinnovo automatico del certificato ogni 12 ore
while true; do
    sleep 12h
    certbot renew
    apachectl graceful
done &

wait "$apache_pid"
