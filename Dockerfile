FROM python:3.11
ENV PYTHONUNBUFFERED 1
RUN mkdir /src
WORKDIR /src
COPY requirements.txt /src/
RUN python -m pip install -r requirements.txt
COPY . /src/
