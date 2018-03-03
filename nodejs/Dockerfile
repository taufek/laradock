FROM node:9

RUN apt-get update -yqq && \
  apt-get -y install rubygems build-essential ruby-dev && \
  gem install sass --no-user-install

RUN npm install -g gulp vue-cli grunt-cli webpack jest@20.0.4 jest-cli

# WORKDIR /tmp
# COPY package.json /tmp/
# RUN npm config set registry http://registry.npmjs.org/ && npm install

WORKDIR /app

CMD [ "npm", "start" ]
