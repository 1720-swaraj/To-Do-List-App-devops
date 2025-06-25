FROM node:alpine
RUN mkdir -p /development
COPY package*.json /development
COPY . .