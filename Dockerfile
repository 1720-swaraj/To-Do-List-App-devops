FROM node:alpine

# Set working directory
WORKDIR /development

# Copy only package files first (important for layer caching)
COPY package*.json ./

# Install dependencies in the correct directory
RUN npm install

# Copy remaining files
COPY . .

# # Default command
# CMD ["node", "app.js"]
