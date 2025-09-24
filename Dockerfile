FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install --upgrade pip && \
    pip install django==3.2

EXPOSE 8081

CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8081"]
