# Get base image
FROM node:12-alpine
LABEL Mauro Garcia Esteban <mauro.garciaesteban@gmail.com>

# add tini
RUN apk --no-cache add tini
# Clean APK cache
RUN rm -rf /var/cache/apk/*
# dirs for project files
RUN mkdir /home/node/app
WORKDIR /home/node/app
ENV NPM_CONFIG_LOGLEVEL warn

# copy project file
COPY package*.json /home/node/app/

# set tini as entrypoint
ENTRYPOINT ["/sbin/tini", "--"]

# install node packages
RUN npm ci

# application server port
EXPOSE 3000
# ENV NAME run in production mode
ENV NODE_ENV production
# copy app files
COPY . .

# default run command
CMD npm run dev