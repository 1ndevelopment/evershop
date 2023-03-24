FROM ubuntu

MAINTAINER 1ndevelopment

RUN apt-get update
RUN npm init;
RUN npm install @evershop/evershop;
RUN npm run setup

CMD ["echo", "Starting up Evershop Container . . ."]

RUN npm run start