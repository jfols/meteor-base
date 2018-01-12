# Start with the latest node version and yarn installation
FROM node:latest

# Install latest Meteor
RUN curl https://install.meteor.com | sh

# used to update settings files with generated urls
RUN npm i -g json
