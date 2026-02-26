FROM python:3.10

WORKDIR /app

COPY backend-ai/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY backend-ai/ .


CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "10000"]
