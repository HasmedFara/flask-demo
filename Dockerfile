FROM python:3.7.3-alpine3.9
ENV LC_ALL=C.UTF-8
ENV FLASK_APP=app.py
ENV FLASK_DEBUG=True
ENV FLASK_ENV=development
ENV PORT=8000


WORKDIR /home/app
COPY requirements.txt .

RUN pip install --upgrade pip \
  && pip install --no-cache-dir -r requirements.txt

COPY . .
CMD flask run --host 0.0.0.0 --port $PORT
