#Specify a base image
FROM node:alpine

WORKDIR /usr/app
#Get access to package.json file 
# ./ path to folder  --------  ./ place to copy stuff to inside "the container"
COPY ./package.json ./

#install some dependencies
RUN npm install
COPY ./ ./
 
#default command
CMD ["npm","start"]