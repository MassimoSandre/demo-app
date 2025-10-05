# Dockerfile
FROM node:20-alpine

WORKDIR /app

COPY package.json ./
COPY app.js ./

EXPOSE 80

CMD ["node", "app.js"]