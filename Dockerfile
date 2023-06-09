# Use the official Node.js base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code, including server.js
COPY . .

# Expose the port the app will run on
EXPOSE 80

# Start the application
CMD [ "node", "/app/server.js" ]
