FROM quay.io/buildo/node5-npm3

RUN apt-get update && apt-get install -y xvfb chromium

ADD xvfb-chromium /usr/bin/xvfb-chromium

RUN ln -s /usr/bin/xvfb-chromium /usr/bin/google-chrome
RUN ln -s /usr/bin/xvfb-chromium /usr/bin/chromium-browser

WORKDIR /app
