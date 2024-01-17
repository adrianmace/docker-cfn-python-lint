FROM python:3.12.1@sha256:ef9a12c5879cf27062385e4ecc4a74684e18d77fe2ea777e30b5c23f129890a6

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
