FROM python:3.10-alpine

COPY requirements.txt /temp/requirements.txt

RUN apk add postgresql-client build-base postgresql-dev

RUN pip install -r /temp/requirements.txt

COPY service /service
WORKDIR /service
EXPOSE 8000