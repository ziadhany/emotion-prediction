FROM bitnami/pytorch:1.13.1-debian-11-r18

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

# hadolint ignore=DL3013
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

EXPOSE 80

CMD ["python3", "app.py"]
