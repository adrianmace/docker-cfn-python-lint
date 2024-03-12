FROM python:3.12.2@sha256:181c072313cf5f1b0d2e2bbe025edc2c5dd60a9bf04f9a26980cd3ccfe4f0b20

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
