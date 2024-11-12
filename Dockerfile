FROM python:3.13.0@sha256:d8c03730973cf1891f1815ea16903a9c8fefb3e0af1ba5bb89f7a67d2c5a97c3

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
