#!/bin/sh

sed -i 's/ACCESS_KEY/$ACCESS_KEY/g' credentials

sed -i 's/REGION/$REGION/g' config

#aws configure --profile default
