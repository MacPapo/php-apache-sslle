FROM debian:stable-slim

# Installa Apache e Certbot
RUN apt-get update && \
    apt-get install -y apache2 certbot python3-certbot-apache curl

# Abilita i moduli SSL e rewrite
RUN a2enmod ssl && \
    a2enmod rewrite

# Copia i file di configurazione Apache e lo script
COPY conf/     /etc/apache2/sites-available/
COPY src/      /var/www/html/
COPY ./init.sh /usr/local/bin/init.sh

# Espone le porte 80 e 443
EXPOSE 80 443

# Rende eseguibile lo script e lo avvia
RUN chmod +x /usr/local/bin/init.sh
CMD ["/usr/local/bin/init.sh"]
