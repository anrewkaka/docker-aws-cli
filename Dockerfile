FROM docker:latest

RUN apk add --no-cache aws-cli

RUN mkdir /root/.aws

WORKDIR /root/.aws

COPY . .

## COPY entrypoint.sh /root/entrypoint.sh

## RUN chmod 777 /root/entrypoint.sh

## ENTRYPOINT ["/root/entrypoint.sh"]

ENV ACCESS_KEY=
ENV SECRET_KEY=
ENV REGION=

RUN sed -i 's/ACCESS_KEY/$ACCESS_KEY/g' credentials
RUN sed -i 's/ACCESS_KEY/$SECRET_KEY/g' credentials
RUN sed -i 's/REGION/$REGION/g' config
