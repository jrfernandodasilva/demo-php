## run project local to test
needs `php` and `composer` installed
```bash
composer install
php -S 0.0.0.0:8080 -t src
```

## Docker build
```bash
docker build -t demo-php:latest .
```

## Docker run
```bash
docker run --rm -p 8080:8080 -v $(pwd):/app --name demo-php demo-php:latest
```

## Docker compose run (optional)
```bash
docker compose up -d
```

## Access docker container via terminal
```bash
docker exec -it demo-php-app-1 sh
```