FROM python:3.12.0@sha256:41d8a0a357debbd80cdc257b2c08d272984a0e536ff69a01a8b939ab0a6ccc12

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
