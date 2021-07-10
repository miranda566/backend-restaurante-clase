FROM node:latest
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 3000
HEALTHCHECK CMD curl -f http://localhost:3000/login || exit 1
cmd ["node", "server.js"]