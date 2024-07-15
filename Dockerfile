FROM python:3.12-slim

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt update && apt install -y --no-install-recommends gcc

COPY . /app

RUN pip install poetry

CMD ["gunicorn", "core.wsgi"]