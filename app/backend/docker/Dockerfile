FROM python:3.13.5-slim

WORKDIR /app

COPY docker/requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir torch torchvision --index-url https://download.pytorch.org/whl/cpu
RUN pip install --no-cache-dir fastapi uvicorn transformers accelerate bitsandbytes

COPY src /app/src

EXPOSE 22131

CMD ["uvicorn", "src.api:app", "--host", "0.0.0.0", "--port", "22131"]