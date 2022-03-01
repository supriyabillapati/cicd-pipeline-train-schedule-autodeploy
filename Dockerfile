FROM node:latest as node 
RUN mkdir -p /app
WORKDIR /usr/src/app
COPY /var/lib/jenkins/workspace/retailCI/target/addressbook.war .
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
