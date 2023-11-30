FROM ubuntu
WORKDIR /app

COPY . /app

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip install -r requirements.txt

CMD ["gunicorn", "-b", "0.0.0.0:9000", "app:app"]