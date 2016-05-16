# FROM node:argon
FROM hypriot/rpi-node:latest

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app
RUN pwd
RUN ls -al

EXPOSE 5000
CMD [ "npm", "start" ]
