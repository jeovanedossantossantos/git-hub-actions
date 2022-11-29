FROM node:16.13.1
WORKDIR /user/app
COPY ./package*.json ./
RUN yarn
COPY . .

EXPOSE 3333

CMD yarn start