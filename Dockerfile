FROM node:20-alpine AS development

ENV GOOGLE_APPLICATION_CREDENTIALS=/home/node/chess-teacher-firebase/service-account-file.json

RUN apk add -U --no-cache openjdk21-jre-headless && \
    npm install -g firebase-tools

EXPOSE 4000 4400 4500 9000 9099

FROM development AS production

WORKDIR /home/node/chess-teacher-firebase/

COPY ./.firebaserc ./database.rules.json ./firebase.json ./

CMD ["firebase", "emulators:start"]
