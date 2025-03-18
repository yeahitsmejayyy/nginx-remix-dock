# Docker Template: Nginx + Remix

A Docker template for a multi-container setup featuring a Remix app proxied by NGINX.

## Overview
This template provides a clean and scalable setup combining:
- **Remix** for frontend and API handling.
- **NGINX** as a reverse proxy.

## Structure
```
├── remix-app/         # Place your Remix app here
├── nginx/             # NGINX configuration (reverse proxy)
│   ├── nginx.conf
├── Dockerfile.remix   # Remix app container
├── Dockerfile.nginx   # NGINX container
├── docker-compose.yml # Service orchestration
└── README.md
```

## Usage
### 1. Set Up Your Remix App
Ensure you have a Remix app inside `remix-app/`. If you don’t, create one:
```sh
npx create-remix@latest remix-app
```
Make sure your app builds successfully before running the containers.

### 2. Build and Run
```sh
docker-compose up --build
```
- Access Remix app: [http://localhost:3000](http://localhost:3000)
- Access via NGINX: [http://localhost](http://localhost)

## Configuration
- **NGINX (Port 80)**: Reverse proxy to Remix (port 3000). Edit `nginx/nginx.conf` as needed.
- **Remix (Port 3000)**: Ensure your app is correctly set up in `remix-app/`.

## Notes
- **Ensure your Remix app builds successfully before running the containers.**
- **Check logs with** `docker-compose logs <service>` (e.g., `nginx`, `remix-app`).
- **For debugging**, modify `nginx/nginx.conf` and restart the containers.

Now you're ready to go!

