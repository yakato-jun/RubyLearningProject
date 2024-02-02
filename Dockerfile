FROM ruby:3.2.3-alpine3.19

RUN apk add --update --no-cache build-base linux-headers libxml2-dev libxslt-dev
WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .