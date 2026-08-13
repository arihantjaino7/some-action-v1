FROM python:3.12-slim

WORKDIR /app
COPY . .
RUN pip install -r requirements.txt

RUN useradd --create-home --shell /usr/sbin/nologin appuser
USER appuser
CMD ["python", "app.py"]
