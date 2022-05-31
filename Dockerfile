# syntax=docker/dockerfile:1
FROM python:3.10.4-alpine3.16
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN apk add --update alpine-sdk
RUN apk add build-base mariadb-dev mysql-client mariadb-client
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
