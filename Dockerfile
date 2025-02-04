FROM python:3.13.1@sha256:d59d263333c08481fb66062240b3c34cdd8d215dcb3e9336a13e72cf034a184e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
