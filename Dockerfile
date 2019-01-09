FROM python:3.6.0

LABEL Dave Cremins <hi@hoangddt.net>

RUN apt-get update -qq && apt-get install -yqq curl git
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash
RUN apt-get install -yqq nodejs
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install yarn
RUN apt-get clean -y