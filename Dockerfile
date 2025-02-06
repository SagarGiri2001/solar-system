# Using the base image
FROM node:18-alpine3.17

# Creating a working dir
WORKDIR /usr/app

#Copying the file
COPY package.json /usr/app/

# Installing the dependencies
RUN npm install

# Copying the major source code
COPY . /usr/app/

# Expose the port to access the web application
EXPOSE 3000

# Starting the web application
CMD ["node", "app.js"]


