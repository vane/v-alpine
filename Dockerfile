FROM alpine:3.10.2
MAINTAINER michal@vane.pl
RUN apk add --no-cache bash git gcc libexecinfo-dev make musl-dev
RUN cp /bin/bash /bin/sh
# for gui build
RUN apk add --no-cache freetype-dev glfw-dev
# for news_fetcher example
RUN apk --no-cache add openssl-dev
# download project
RUN mkdir /code/v
WORKDIR /code/v
RUN git clone --depth 1 --quiet https://github.com/vlang/v . && make
# link executable
RUN ln -s /code/v/v /usr/local/bin/v
# change workdir to examples
WORKDIR /code/v/examples
