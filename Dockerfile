FROM python:3@sha256:fb6bb9bf4266de2f5cf649d35e471fb0cd026770ac162705ff1610adaeb5eefa

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
