FROM python:3.10.7@sha256:4f04448958a4e50461c861a92d892e9287484acb5d929c47a994101edc6e2e86

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
