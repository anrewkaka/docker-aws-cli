FROM docker:latest

RUN apk add --no-cache aws-cli

RUN mkdir .aws

WORKDIR .aws

COPY credentials .aws/credentials
COPY config .aws/config
