# training-django_tutorial
---
docker-compose.yml file
```
services:
  web:
    build: .
    command: python manage.py runserver 0.0.0.0:8000
    volumes:
      - .:/src
    ports:
      - '8000:8000'
```
Dockerfile file
```
FROM python:3.11
ENV PYTHONUNBUFFERED 1
RUN mkdir /src
WORKDIR /src
COPY requirements.txt /src/
RUN python -m pip install -r requirements.txt
COPY . /src/
```
requirements.txt file
```
Django==4.1
```
Create project
```
$ docker-compose run web django-admin startproject djangoDocker
```
Apply the migrations
```
$ docker-compose run web python manage.py makemigrations
$ docker-compose run web python manage.py migrate
```
Create super user
```
$ docker-compose run web python manage.py createsuperuser
```
Run
```
$ docker-compose up
```
Visit
- http://0.0.0.0:8000/
- http://0.0.0.0:8000/admin/
Done!
