FROM alpine:latest

# rtl_433 requires shared libraries from librtlsdr
RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
    librtlsdr

COPY out/bin /bin

ENTRYPOINT [ "rtl_433" ]
