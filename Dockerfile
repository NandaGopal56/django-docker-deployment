# First stage: build the Python app
FROM python:3.11.9-bookworm AS build

RUN pip install --upgrade pip

COPY ./requirements.txt .

RUN pip install -r requirements.txt

COPY ./ecommerce_project /ecommerce_project

WORKDIR /ecommerce_project

COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]