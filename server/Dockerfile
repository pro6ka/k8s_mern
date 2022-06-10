FROM node:16
WORKDIR /usr/src/app/server
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
RUN pwd
CMD ["/usr/src/app/server/node_modules/.bin/nodemon", "start"]
