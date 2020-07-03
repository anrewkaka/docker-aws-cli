FROM docker:latest

RUN apk add --no-cache aws-cli

RUN mkdir /root/.aws

WORKDIR /root/.aws

COPY . .

ENTRYPOINT ["./entrypoint.sh"]
