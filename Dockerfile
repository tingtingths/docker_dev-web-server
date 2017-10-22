FROM python:alpine3.6

RUN mkdir -p /app

COPY app/ /app/

RUN pip3 --no-cache-dir install -r /app/requirements.txt

EXPOSE 80

VOLUME /public

CMD ["python3", "/app/www_server.py"]
