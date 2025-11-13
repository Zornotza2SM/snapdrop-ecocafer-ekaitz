FROM alpine:3.20

CMD ["tail", "-f", "/dev/null"]

LABEL maintainer="curso@example.com"

ENV LANG=C.UTF-8

WORKDIR /app

COPY ./src /app/src

COPY ./config /app/config

RUN apk add --no-cache bash

EXPOSE 8080

CMD ["tail", "-f", "/dev/null"]