FROM node:16.13.1
WORKDIR /user/app
COPY ./package*.json ./
RUN /bin/sh -c apt-get update -y \ yarn
COPY . .

EXPOSE 3333

CMD yarn start