FROM python:3.13.5-slim

WORKDIR /app

COPY docker/requirements.txt /app/requirements.txt

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir torch torchvision --index-url https://download.pytorch.org/whl/cpu
RUN pip install --no-cache-dir fastapi uvicorn transformers accelerate bitsandbytes prometheus-client

COPY src /app/src

EXPOSE 22131

CMD ["uvicorn", "src.api:app", "--host", "0.0.0.0", "--port", "22131"]