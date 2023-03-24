FROM ubuntu

MAINTAINER 1ndevelopment

CMD ["echo", "Installing/setting up evershop . . ."]

RUN apt-get update
RUN apt install npm nodejs -y

RUN npm init;
RUN npm install @evershop/evershop;
RUN npm run setup

CMD ["echo", "Starting up Evershop Container . . ."]

RUN npm run start