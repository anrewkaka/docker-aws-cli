FROM docker:latest

RUN apk add --no-cache aws-cli

RUN mkdir /root/.aws

WORKDIR /root/.aws

COPY credentials .aws/credentials
COPY config .aws/config

ENTRYPOINT ["/bin/sh", "entrypoint.sh"]
