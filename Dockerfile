# Use the official Node.js image.
FROM node:22.5-alpine

# # Base image
# FROM node:14-alpine
# Set working directory
WORKDIR /app
# Copy package.json and package-lock.json
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the rest of the application
COPY . .
# Build the React application
RUN npm run build
# Serve the application using a static file server
RUN npm install -g serve
CMD ["serve", "-s", "build"]
# Expose port 3000
EXPOSE 3000