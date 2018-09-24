FROM ruby:2-alpine

WORKDIR /opt/farmers-market
RUN apk add make
ADD ./Gemfile /opt/farmers-market/Gemfile
RUN bundle install
RUN bundle install --binstubs
RUN bin/rspec --init
ADD . /opt/farmers-market
