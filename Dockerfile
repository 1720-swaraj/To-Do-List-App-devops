FROM node:alpine
RUN mkdir -p /devlopment
WORKDIR /devlopment
COPY package*.json ./
RUN npm ci --only=production
COPY . .
EXPOSE 9999
CMD ["node","app.js"]

