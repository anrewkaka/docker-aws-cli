FROM docker:latest

RUN apk add --no-cache aws-cli

# RUN mkdir /root/.aws
# 
# WORKDIR /root/.aws
# 
# COPY . .
# 
# ENV ACCESS_KEY="changeit"
# ENV SECRET_KEY="changeit"
# ENV REGION="changeit"
# 
# CMD sed -i 's/ACCESS_KEY/'"$ACCESS_KEY"'/g; s/SECRET_KEY/'"$SECRET_KEY"'/g' credentials
# CMD sed -i 's/REGION/'"$REGION"'/g' config
