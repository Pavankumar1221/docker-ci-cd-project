# Use an official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the code
COPY . .

# Command to run app (you can adjust this based on your project)
CMD ["npm", "start"]
