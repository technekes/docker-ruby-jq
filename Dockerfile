FROM ruby:latest

RUN \
  cd /tmp && \
  git clone https://github.com/stedolan/jq.git && \
  cd jq && \
  autoreconf -i && \
  ./configure --enable-shared --disable-maintainer-mode && \
  make && \
  make install && \
  ldconfig

RUN gem install ruby-jq
