FROM php:8-alpine

WORKDIR /app

COPY composer.json composer.lock ./

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN COMPOSER_ALLOW_SUPERUSER=1 composer install

COPY . .

CMD [ "php", "-S", "0.0.0.0:8080", "-t", "src" ]

EXPOSE 8080