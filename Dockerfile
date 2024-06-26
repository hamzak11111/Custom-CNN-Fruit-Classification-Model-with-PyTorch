FROM python:3.10
RUN apt-get update && apt-get install -y docker.io
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD [ "python", "app.py" ]