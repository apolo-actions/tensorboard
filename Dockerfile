FROM tensorflow/tensorflow:2.21.0

LABEL org.opencontainers.image.source="https://github.com/apolo-actions/tensorboard"

EXPOSE 6006

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

CMD ["tensorboard", "--host=0.0.0.0", "--logdir=/project/results"]
