FROM python:3.7.1-alpine

ADD . /app

WORKDIR /app

RUN pip install pipenv  && pipenv install --system

ENV PORT=5000

CMD ["python", "app.py"]