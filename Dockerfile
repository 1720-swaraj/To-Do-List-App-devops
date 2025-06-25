FROM node:alpine
RUN mkdir -p /development
COPY package*.json /development
RUN npm install
COPY . .
CMD ["node","app.js"]