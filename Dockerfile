FROM python:3.13.2@sha256:f75cfde59c11ace941749a2caf96743b3b49ffa7118412e9afa151caa70a0d2e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
