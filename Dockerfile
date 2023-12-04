# Use the official Node.js image as the base image for this container
FROM node

# Set the working directory inside the container to /app
WORKDIR /app

# Copy all files from the current directory on the host to /app in the container
COPY . /app

# Run npm install in the container to install the application's dependencies
RUN npm install

# Expose port 80 to the host machine for accessing the application
EXPOSE 80

# Define the command to run the application (start the Node.js server)
CMD [ "node", "server.js" ]
