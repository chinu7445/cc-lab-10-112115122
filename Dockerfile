# FROM node:20-alpine

# WORKDIR /app

# COPY package*.json ./

# run npm install

# copy . .

# expose 5173

# cmd ["npm","run","dev"]

FROM node:20-alpine

WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port 5173
EXPOSE 5173

# Command to run the application
CMD ["npm", "run","dev"]