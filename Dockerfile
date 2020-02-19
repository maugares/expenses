# Get base image
FROM node:lts-alpine
LABEL Mauro Garcia Esteban <mauro.garciaesteban@gmail.com>

# dirs for project files
RUN mkdir /home/node/app
WORKDIR /home/node/app
ENV NPM_CONFIG_LOGLEVEL warn

# Log to commang line
CMD ["echo", "Node is ready"]
