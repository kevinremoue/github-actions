FROM python:3
COPY app /app

WORKDIR /app
RUN python3 -m ensurepip && pip install -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
