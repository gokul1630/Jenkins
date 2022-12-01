FROM node:16.18-slim

WORKDIR /usr/app

COPY package.json yarn.lock ./

RUN yarn install

COPY . .

RUN yarn build

EXPOSE 8081

CMD ["yarn","serve"]