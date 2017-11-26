FROM python:3.6-alpine3.6
LABEL Name=django-vue-hello-world Version=0.0.1

RUN apk update
RUN mkdir /app

ENV SHELL=/bin/sh
WORKDIR /app

RUN pip install pipenv

COPY Pipfile Pipfile
COPY Pipfile.lock Pipfile.lock
COPY manage.py manage.py
COPY db.sqlite3 db.sqlite3
COPY hellovue/ hellovue/

RUN pipenv install

EXPOSE 8000

ENTRYPOINT ["pipenv", "run", "python", "manage.py", "runserver", "0.0.0.0:8000" ]
