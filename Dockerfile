# Use official Node 18 image as base
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app
COPY . .

# Expose port 3000
EXPOSE 3000

# Start app with nodemon
CMD ["npx", "nodemon", "app.js"]
