FROM camillebrucky/basic-deloy:latest
# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
FROM node:10
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["sh", "/entrypoint.sh"]
