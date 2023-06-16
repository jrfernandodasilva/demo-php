## build
```bash
docker build -t demo-php --rm .
```

## run
```bash
docker run -v $(pwd):/app -p 8080:8080 demo-php
```

## run with docker compose
```bash
docker compose up -d
```