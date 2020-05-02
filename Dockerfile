FROM ruby:latest

RUN \
  apt-get update && \
  apt-get install -y libonig-dev && \
  rm -rf /var/lib/apt/lists/*

RUN gem install bundler ruby-jq
