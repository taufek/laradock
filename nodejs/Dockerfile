FROM node:9

RUN apt-get update -yqq && \
  apt-get -y install rubygems build-essential ruby-dev && \
  gem install sass --no-user-install

RUN npm install -g gulp vue-cli grunt-cli webpack jest@20.0.4 jest-cli

# RUN npm rebuild node-sass --force

WORKDIR /app

CMD [ "npm", "start" ]
