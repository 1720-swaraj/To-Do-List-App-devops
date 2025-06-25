FROM node:alpine

# Set working directory
WORKDIR /development

# Copy only package files first (important for layer caching)
COPY package*.json ./

# Install dependencies in the correct directory
RUN npm install && wget https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem 
# Copy remaining files
COPY . .

# Default command
CMD ["node", "app.js"]
