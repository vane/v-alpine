FROM alpine:3.10.0
MAINTAINER michal@vane.pl
RUN apk add --no-cache bash git build-base
RUN cp /bin/bash /bin/sh
# for gui build
RUN apk add --no-cache freetype-dev glfw-dev
# for news_fetcher example
RUN apk --no-cache add curl-dev
# download project
RUN mkdir /code
WORKDIR /code
RUN git clone https://github.com/vlang/v && cd /code/v/compiler && make
# link executable
RUN ln -s /code/v/compiler/v /usr/local/bin/v
# change workdir to examples
WORKDIR /code/v/examples