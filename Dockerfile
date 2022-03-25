FROM node:lts-alpine AS base
COPY ./package.json .
COPY ./package-lock.json .
COPY ./index.js .
RUN npm install
CMD node index.js