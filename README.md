# nginx-remix-dock
A Docker template for a Remix app proxied by NGINX. One process per container.

## Structure
- `remix-app/` - Remix app basecamp.
- `nginx/` - NGINX config, the traffic cop.
- `Dockerfile.remix` - Remix builder.
- `Dockerfile.nginx` - NGINX setup.
- `docker-compose.yml` - The conductor.

## Usage
1. Remix app in remix-app/? Nice. No? npx create-remix@latest remix-app.
2. From the root:
```bash
docker-compose up --build
```

## Notes
- NGINX runs on 80, proxies to Remix on 3000.
- Edit `nginx/nginx.conf` if you’re feeling bold.
- Breaks? Check logs, not my spirit.

