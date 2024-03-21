FROM node:20-alpine

ENV GOOGLE_APPLICATION_CREDENTIALS=/home/node/chess-teacher-firebase/service-account-file.json

RUN apk add -U --no-cache openjdk21-jre-headless && \
    npm install -g firebase-tools

WORKDIR /home/node/chess-teacher-firebase/

COPY ./ ./

EXPOSE 4000 4400 4500 9000 9099

CMD ["firebase", "emulators:start"]
