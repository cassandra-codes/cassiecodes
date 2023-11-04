FROM python:3.9-bullseye

ENV PYTHONUNBUFFERED=1

ENV DJANGO_SETTINGS_MODULE=cassiecodes.settings

WORKDIR /api

RUN pip install django djangorestframework django-livereload-server django-filter django-cors-headers jsonfield markdown pylint

# copy from the current directory of the Dockerfile to /api in the image
COPY . . 

EXPOSE 8000