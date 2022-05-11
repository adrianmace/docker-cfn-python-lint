FROM python:3@sha256:5230512a5f98b350d609a94194cfe76c8083e2cdbcbd4e93d63db4657155af6e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
