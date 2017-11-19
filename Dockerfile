FROM python:3.6.2

RUN mkdir /app
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

ENV FLASK_APP src/app.py

CMD ["flask", "run", "--host=0.0.0.0"]
