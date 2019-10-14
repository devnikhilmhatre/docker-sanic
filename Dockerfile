FROM python:3-alpine3.10

RUN apk update && apk upgrade && apk add --no-cache curl bash gcc g++ libc-dev unixodbc-dev make linux-headers git

COPY . /app

RUN pip install --no-cache-dir -r /app/requirements.txt

WORKDIR /app

ENTRYPOINT ["python", "server.py"]