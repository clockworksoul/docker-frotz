FROM ubuntu:14.04

MAINTAINER Matt Titmus <matthew.titmus@gmail.com>

RUN apt-get update \
   && apt-get install --no-install-recommends -y frotz unzip \
   && apt-get clean \
   && apt-get autoclean \
   && apt-get autoremove \
   && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash frotz 

USER frotz

WORKDIR /home/frotz
