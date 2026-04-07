FROM python:3.13.5-slim

WORKDIR /app

COPY docker/requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir gradio requests

COPY src /app/src

EXPOSE 22130

ENV GRADIO_SERVER_NAME=0.0.0.0

ENV GRADIO_SERVER_PORT=22130

CMD ["python", "src/app.py"]