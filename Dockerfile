# syntax=docker/dockerfile:1

FROM docker.io/fedora:41
RUN dnf install -y python3 python3-pip

COPY app.py /app/
COPY weather/ /app/weather/
COPY requirements.txt /app/
WORKDIR /app

RUN pip install -r /app/requirements.txt
CMD ["python3","app.py"]