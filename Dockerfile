FROM ruby:latest

RUN \
  cd /tmp && \
  git clone https://github.com/stedolan/jq.git && \
  cd jq && \
  autoreconf -i && \
  ./configure --enable-shared && \
  make && \
  make install && \
  ldconfig

RUN gem install ruby-jq
