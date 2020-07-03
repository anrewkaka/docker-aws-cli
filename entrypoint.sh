#!/bin/sh

sed -i 's/ACCESS_KEY/$ACCESS_KEY/g' ~/.aws/credentials

sed -i 's/REGION/$REGION/g' ~/.aws/config

aws configure --profile default
