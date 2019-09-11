FROM nginx

RUN apt-get update
RUN apt-get install -y php7.3-fpm

COPY config/nginx/default.conf /etc/nginx/conf.d/default.conf
COPY config/php/www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY . /usr/share/nginx/html

CMD service php7.3-fpm start && exec nginx -g 'daemon off;'