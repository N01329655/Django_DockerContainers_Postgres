# Pull base image
FROM python:3.9

#set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# set work directory
WORKDIR /code

# install dependecies
COPY Pipfile Pipfile.lock /code/

RUN pip install pipenv && pipenv install --system

# Copy project
Copy . /code/