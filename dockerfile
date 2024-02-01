# Use the official Node.js image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the Next.js app
# RUN npm run build

# Expose the port on which the app will run
EXPOSE 3000

# Define the command to run your app using npm
CMD ["npm", "start"]
