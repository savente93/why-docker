FROM node:16-alpine

WORKDIR /usr/src/app

COPY vite.config.js ./
COPY package*.json ./

RUN npm install

COPY ./src ./src
COPY ./public ./public
COPY ./assets ./assets 
COPY ./index.html ./index.html

RUN npm run build

EXPOSE 5173

ENV HOST=0.0.0.0

CMD [ "npm", "run", "dev", "--", "--host" ]
