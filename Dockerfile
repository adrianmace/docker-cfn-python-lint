FROM python:3.12.0@sha256:d5aad17b2ac47564d8f65c836594c139f95a4f6b03164289add4f9c501909def

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
