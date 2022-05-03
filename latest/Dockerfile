# Copyright (c) 2022 Jqshuv (Joshua Schmitt)
# 
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

FROM ubuntu:latest

LABEL maintainer="hello@unately.com"
LABEL org.opencontainers.image.source https://github.com/upackages/ubuntu
LABEL org.opencontainers.image.description The Ubuntu latest Version by unately

RUN  apt-get update \
	 && apt-get dist-upgrade -y \
     && apt-get -y --no-install-recommends install grep libssl1.1 ca-certificates curl zip unzip git wget bash dos2unix sudo \
     && apt-get clean \
     && rm -rf /var/lib/apt/lists/*
