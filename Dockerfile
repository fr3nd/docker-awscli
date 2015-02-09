FROM debian:jessie
MAINTAINER Carles Amigó, fr3nd@fr3nd.net

ENV AWSCLI_VERSION 1.7.4

RUN apt-get update && apt-get install -y \
      groff \
      less \
      python3-pip

RUN pip3 install awscli==$AWSCLI_VERSION

ENTRYPOINT [ "/usr/local/bin/aws" ]
