FROM node:10.15.3-alpine

RUN yarn global add pm2 n

WORKDIR /var/www/html

COPY . /var/www/html

RUN yarn

VOLUME [ "/var/www/html" ]

EXPOSE 9000

CMD [ "yarn", "start" ]