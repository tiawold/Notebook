FROM python:3.9-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY app/ app/
COPY tests/ tests/

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]