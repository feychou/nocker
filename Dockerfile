FROM mhart/alpine-node 

# Create app directory
RUN mkdir -p /home/nocker
WORKDIR /home/nocker

# Install yarn
RUN echo -e 'http://dl-cdn.alpinelinux.org/alpine/edge/main\nhttp://dl-cdn.alpinelinux.org/alpine/edge/community\nhttp://dl-cdn.alpinelinux.org/alpine/edge/testing' > /etc/apk/repositories \
    && apk add --no-cache yarn

# Install app dependencies
COPY package.json /home/nocker
RUN yarn install

# Bundle app soure
COPY . /home/nocker

EXPOSE 8080
CMD [ "yarn", "start"]