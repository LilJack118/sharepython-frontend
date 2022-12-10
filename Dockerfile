
FROM node:16

# make the 'app' folder the current working directory

# copy both 'package.json' and 'package-lock.json' (if available)
COPY package.json /package.json

# install project dependencies
RUN npm install

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .

EXPOSE 8080

CMD [ "npm", "run", "serve" ]