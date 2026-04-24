FROM python:3.13.13-slim@sha256:d2462a6bed37b4fc6cabecf5a2132ae70df772fe03c7393c4d98a0c2fb48aa2e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
