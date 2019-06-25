FROM alpine:3.10.0
MAINTAINER michal@vane.pl
RUN apk add --no-cache git
RUN apk add --no-cache build-base
RUN mkdir /code
WORKDIR /code
RUN git clone https://github.com/vlang/v && cd /code/v/compiler && make
RUN ln -s ~/code/v/compiler/v /usr/local/bin/v