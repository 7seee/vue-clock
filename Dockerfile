FROM node:alpine3.12

RUN mkdir /app
WORKDIR /app

COPY index.css index.css
COPY index.html index.html

RUN ls -l /app

RUN npm install -g http-server

CMD ["http-server", "-p", "8080", "/app"]
