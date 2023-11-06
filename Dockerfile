# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the Docker image to /app
WORKDIR /app

# Copy the current directory contents into the Docker image at /app
COPY . /app

# Install any needed packages specified in package.json
RUN npm install

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run the app when the container launches
CMD ["npm", "start"]