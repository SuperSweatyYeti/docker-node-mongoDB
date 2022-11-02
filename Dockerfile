FROM node:carbon
# Create app directory
WORKDIR /usr/src/app
# Install app dependencies
COPY package*.json ./
RUN npm install
RUN npm install nodemon
# Copy app source code
COPY . .
#Expose port and start application
EXPOSE 8080
CMD [ "npm", "run", "start.dev" ]
# CMD [ "npm", "start" ]
# CMD ["nodemon", ".", "-e", "js,css,ejs"]