FROM python:3.8
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code
RUN python -m pip install -r requirements.txt
RUN py manage.py makemigrations
RUN py manage.py migrate
COPY . /app

CMD python manahe.py runserver 0.0.0.0:8000