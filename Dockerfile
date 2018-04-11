# Start with the latest node version and yarn installation
FROM node:8.11.1

USER node
RUN mkdir /home/node/.npm-global
ENV PATH=/home/node/.npm-global/bin:/home/node/.meteor:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

# Install latest Meteor
RUN curl https://install.meteor.com | sh

# Install npm 5.8.0
RUN npm i -g npm@5.8.0

# used to update settings files with generated urls
RUN npm i -g json node-gyp bcrypt
