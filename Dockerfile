FROM ubuntu

MAINTAINER 1ndevelopment

CMD ["echo", "Installing/setting up Evershop . . ."]

RUN apt-get update
RUN apt install npm nodejs -y

RUN npm init;
RUN npm install @evershop/evershop;
RUN npm run setup

CMD ["echo", "Building Evershop inside container . . ."]
RUN npm run build

CMD ["echo", "Starting up Evershop Container . . ."]

RUN npm run start