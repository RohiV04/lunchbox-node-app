# Use an official Node.js runtime as a base image
FROM node:16

# Set the working directory in the container to /app
WORKDIR /app

# Copy the package.json and package-lock.json to the container's working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application code to the container's working directory
COPY . .

# Expose the port on which the Node.js app will listen
EXPOSE 3000

# Command to run your Node.js application
CMD ["node", "app.js"]
