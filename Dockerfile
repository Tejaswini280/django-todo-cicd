FROM python:3

# Install distutils
RUN apt-get update && apt-get install -y python3-distutils

WORKDIR /data

RUN pip install django==3.2

COPY . .

RUN python manage.py migrate
