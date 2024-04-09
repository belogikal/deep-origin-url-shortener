FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build TypeScript files
RUN npm run build

# Expose the port the app runs on
EXPOSE 5000

# Define the command to run the app
CMD [ "node", "dist/index.js" ]
