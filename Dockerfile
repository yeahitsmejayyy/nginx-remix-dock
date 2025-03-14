# Dockerfile
# Stage 1: Build the Remix app with Vite
FROM node:20-alpine AS builder
WORKDIR /app
COPY app/package.json app/package-lock.json ./
RUN npm install
COPY app ./
RUN npm run build
RUN ls -la /app/build/client || echo "build/client directory not found"

# Stage 2: Serve with Nginx
FROM nginx:alpine
COPY --from=builder /app/build/client /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]