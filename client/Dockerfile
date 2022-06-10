FROM node:16
WORKDIR /usr/src/app/client
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["/usr/src/app/client/node_modules/.bin/nodemon", "start"]
