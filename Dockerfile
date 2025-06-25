FROM node:alpine
WORKDIR /app
COPY package*.json ./ 
RUN npm install
COPY . .
EXPOSE 9999
ENTRYPOINT ["node","app.js"]