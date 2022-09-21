FROM node:16.13.0-alpine3.11

# make the 'app' folder the current working directory
WORKDIR /app/

COPY package.json ./

RUN npm cache verify

# install project dependencies
RUN npm install

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .

EXPOSE 8080

CMD ["npm", "run", "serve"]