FROM python:3.11.4@sha256:aed4e082c20dacc1589441112e1e9ed38b63e8e381979bfbe5c6111f04f4e227

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
