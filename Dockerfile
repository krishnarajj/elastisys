FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . ./
# Expose the port the app will listen on
EXPOSE 3000

# Set the command to run when the container starts
CMD ["npm", "start"]
