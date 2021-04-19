FROM python:3.9
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY /requirements/requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
RUN py manage.py makemigrations
RUN py manage.py migrate
COPY . /app

CMD python manahe.py runserver 0.0.0.0:8000