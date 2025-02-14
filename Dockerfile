
FROM python:3.12-slim


WORKDIR /app


COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt


COPY . .

ENV PORT 8080


CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
