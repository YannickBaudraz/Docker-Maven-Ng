FROM ubuntu:20.04

RUN apt-get update -y

# Node with Yarn
RUN apt-get install -y curl && curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs && npm install -y yarn --global

# Java 11 with maven
RUN apt-get install -y openjdk-11-jdk maven

# Puppeteer dependencies
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2\
  libdbus-1-3 libexpat1 libfontconfig1 libgbm1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0\
  libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 \
  libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 \
  ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils