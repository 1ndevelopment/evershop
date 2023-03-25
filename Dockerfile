FROM alpine:3.14

MAINTAINER 1ndevelopment

CMD ["echo", "Installing/setting up Evershop . . ."]

RUN apk update
RUN apk upgrade --available
RUN apk add npm nodejs

CMD ["echo", "Starting up Evershop Container . . ."]

RUN npx create-evershop-app my-app

EXPOSE 3000