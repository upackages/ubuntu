# Copyright (c) 2022 Jqshuv (Joshua Schmitt)
# 
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

FROM ubuntu:latest

LABEL maintainer="hello@unately.com"
LABEL org.opencontainers.image.source https://github.com/upackages/ubuntu
LABEL org.opencontainers.image.description The Ubuntu latest Version by unately

RUN  dpkg --add-architecture i386 \
	 && apt-get update \
	 && apt-get dist-upgrade -y
     
RUN apt-get -y --no-install-recommends install grep ca-certificates curl zip unzip lib32gcc-s1 libsdl2-2.0-0:i386 git wget bash dos2unix sudo \
     && apt-get clean \
     && rm -rf /var/lib/apt/lists/*