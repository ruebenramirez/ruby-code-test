FROM ruby:2.5.1-apline3.7

RUN apk add make
ADD ./Gemfile.* /opt/farmers-market/
RUN bundle install
ADD . /opt/farmers-market
WORKDIR /opt/farmers-market
RUN make test
