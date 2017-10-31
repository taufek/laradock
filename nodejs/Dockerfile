FROM node:boron

RUN apt-get update -yqq && \
  apt-get -y install rubygems build-essential ruby-dev && \
  gem install sass --no-user-install

RUN npm install -g gulp bower vue-cli grunt-cli webpack jest

RUN npm rebuild node-sass --force

WORKDIR /app

CMD [ "npm", "start" ]
