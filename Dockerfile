FROM docker:latest

RUN apk add --no-cache aws-cli

RUN mkdir /root/.aws

WORKDIR /root/.aws

COPY . .

COPY entrypoint.sh /root/entrypoint.sh

RUN chmod 777 /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]
