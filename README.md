# training-django_tutorial
---
## Running with Docker locally
### Requirements
To get started you will first need Docker installed on your machine.
### Clone this repository
Start project
```
$ docker-compose run web django-admin startproject djangoDocker .
```
Apply the migrations
```
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
Done!
- http://127.0.0.1:8000/
- http://127.0.0.1:8000/admin/
---
## Software Developer
Built by [Javi](https://javierandres.dev) :copyright: 2023  
Found a bug or have an idea? [Contact me](https://javierandres.dev).
