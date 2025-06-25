FROM node:alpine
RUN npm install
RUN mkdir -p /development
COPY package*.json /development
COPY . .
CMD ["node","app.js"]