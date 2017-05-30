FROM mhart/alpine-node 

# Create app directory
RUN mkdir -p /home/app
WORKDIR /home/app

# Install yarn
RUN echo -e 'http://dl-cdn.alpinelinux.org/alpine/edge/main\nhttp://dl-cdn.alpinelinux.org/alpine/edge/community\nhttp://dl-cdn.alpinelinux.org/alpine/edge/testing' > /etc/apk/repositories \
    && apk add --no-cache yarn

# Install app dependencies
COPY package.json /home/app
RUN yarn install

# Bundle app soure
COPY . /home/app

EXPOSE 8080