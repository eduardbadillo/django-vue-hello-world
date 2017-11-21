FROM python:3.6-alpine3.6
LABEL Name=django-vue-hello-world Version=0.0.1

RUN apk update

RUN pip install pipenv

ENTRYPOINT ["tail", "-f", "/dev/null"]
