FROM node:lts-alpine AS base
ARG SCOPE
ENV TURBO_SCOPE=${SCOPE}
COPY ./package.json .
COPY ./package-lock.json .
COPY ./index.js .
RUN npm install
CMD node index.js