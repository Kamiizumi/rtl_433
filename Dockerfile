FROM alpine:latest

RUN apk add --no-cache \
    cmake \
    make \
    gcc \
    musl-dev \
    pkgconf

RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
    librtlsdr-dev
