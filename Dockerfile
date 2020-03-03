FROM node:8
LABEL maintainer="Azure App Service Container Images"

#Create app directory
WORKDIR /app

#Install app dependencies
COPY package.json .

RUN npm install

# Bundle app source
COPY . .

Expose 8080 8080
CMD ["npm", "start"]
