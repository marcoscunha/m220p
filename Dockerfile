FROM python:3.9-slim

RUN apt-get update && apt-get install -y \
  gcc\
  g++\
  libffi-dev\
  && rm -rf /var/lib/apt/lists/*

COPY M220P/requirements.txt /srv/requirements.txt
RUN pip install -r /srv/requirements.txt

RUN mkdir -p /usr/src/mflix
RUN pwd
COPY M220P /usr/src/mflix

WORKDIR /usr/src/mflix/


