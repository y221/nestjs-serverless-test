FROM node:14
 
# install nest.js
RUN npm install -g @nestjs/cli
WORKDIR /var/task