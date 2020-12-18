FROM node:10-alpine AS build
WORKDIR /usr/src/app/
COPY package*.json .
RUN yarn install
COPY . .
ARG REACT_APP_ENVIRONMENT
RUN yarn build
