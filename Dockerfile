# Stage 1: build React
FROM node:20-alpine as build

WORKDIR /app
COPY client/package*.json ./
RUN npm install
COPY client/ ./
RUN npm run build

# Stage 2: produzione con Nginx
FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
