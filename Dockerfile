FROM python:3.6.0

LABEL Dave Cremins <hi@hoangddt.net>

RUN apt-get update -qq && apt-get install -yqq curl git
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash
RUN apt-get install -yqq nodejs
RUN apt-get clean -y