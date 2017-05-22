FROM alpine:3.5

MAINTAINER Matt Titmus <matthew.titmus@gmail.com>

RUN apk add --update --no-cache frotz sudo

RUN adduser -Ds /bin/sh frotz

USER frotz

WORKDIR /home/frotz
